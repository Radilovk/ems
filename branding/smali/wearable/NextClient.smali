.class public final Lcom/isaigu/gymapp/wearable/NextClient;
.super Ljava/lang/Object;
.source "NextClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/NextClient$Fold;,
        Lcom/isaigu/gymapp/wearable/NextClient$Skip;,
        Lcom/isaigu/gymapp/wearable/NextClient$Later;,
        Lcom/isaigu/gymapp/wearable/NextClient$Load;,
        Lcom/isaigu/gymapp/wearable/NextClient$Dismissed;
    }
.end annotation


# static fields
.field static final CHECK_MS:J = 0x3a98L

.field static final HOLD_MS:J = 0x249f00L

.field static final LATE_MS:J = 0x124f80L

.field private static final LOADED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final MIN:J = 0xea60L

.field static final PREFS:Ljava/lang/String; = "xems_next_client"

.field static final READ_MS:J = 0x1d4c0L

.field private static final SNOOZE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static final SNOOZE_MS:J = 0x493e0L

.field static final SOON_MS:J = 0x5265c0L

.field private static appts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/Schedule$Appt;",
            ">;"
        }
    .end annotation
.end field

.field private static checkedAt:J

.field private static lastSlot:I

.field private static pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

.field private static pRec:Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

.field private static pSlot:I

.field private static readAt:J

.field private static shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->SNOOZE:Ljava/util/Map;

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->LOADED:Ljava/util/Map;

    .line 51
    sput v1, Lcom/isaigu/gymapp/wearable/NextClient;->lastSlot:I

    .line 56
    sput v1, Lcom/isaigu/gymapp/wearable/NextClient;->pSlot:I

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    return-object v0
.end method

.method static synthetic access$002(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Lcom/isaigu/gymapp/wearable/Schedule$Appt;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    return-object p0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->SNOOZE:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$202(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/isaigu/gymapp/wearable/NextClient;->shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    return-object p0
.end method

.method static synthetic access$300()Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    .registers 1

    .prologue
    .line 33
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->pRec:Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    return-object v0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/wearable/NextPlan$Rec;)Lcom/isaigu/gymapp/wearable/NextPlan$Rec;
    .registers 1

    .prologue
    .line 33
    sput-object p0, Lcom/isaigu/gymapp/wearable/NextClient;->pRec:Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    return-object p0
.end method

.method static synthetic access$400()V
    .registers 0

    .prologue
    .line 33
    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->close()V

    return-void
.end method

.method static synthetic access$500()I
    .registers 1

    .prologue
    .line 33
    sget v0, Lcom/isaigu/gymapp/wearable/NextClient;->pSlot:I

    return v0
.end method

.method static ago(JJ)Ljava/lang/String;
    .registers 8

    .prologue
    .line 344
    sub-long v0, p2, p0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 345
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_15

    .line 346
    const-string v0, "\u0434\u043d\u0435\u0441"

    const-string v1, "today"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    :goto_14
    return-object v0

    .line 348
    :cond_15
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_24

    .line 349
    const-string v0, "\u0432\u0447\u0435\u0440\u0430"

    const-string v1, "yesterday"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    .line 351
    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u043f\u0440\u0435\u0434\u0438 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u0434\u043d\u0438"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " days ago"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method private static anyFree(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 222
    move v1, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 223
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 224
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_22

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v0, :cond_22

    .line 225
    const/4 v2, 0x1

    .line 228
    :cond_21
    return v2

    .line 222
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private static anyRunning(Ljava/util/List;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 212
    move v1, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    .line 213
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 214
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_22

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_22

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_22

    .line 215
    const/4 v2, 0x1

    .line 218
    :cond_21
    return v2

    .line 212
    :cond_22
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2
.end method

.method private static ask(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;ILcom/isaigu/gymapp/train/model/TrainItem;Z)V
    .registers 21

    .prologue
    .line 355
    const-string v2, "soon"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/PlanScreen;->sync(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    .line 356
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 357
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 358
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/NextClient;->nextOf(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/NextPlan;->recommend(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;JJ)Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    move-result-object v4

    .line 359
    sput-object p1, Lcom/isaigu/gymapp/wearable/NextClient;->pAppt:Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 360
    sput-object v4, Lcom/isaigu/gymapp/wearable/NextClient;->pRec:Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    .line 361
    sput p2, Lcom/isaigu/gymapp/wearable/NextClient;->pSlot:I

    .line 362
    move-object/from16 v0, p1

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    sub-long/2addr v2, v8

    long-to-double v2, v2

    const-wide v6, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v2, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    .line 363
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p1

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-lez v6, :cond_23f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 \u0441\u043b\u0435\u0434 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u043c\u0438\u043d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 in "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 364
    :goto_81
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 365
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v3

    const/16 v5, 0x258

    move-object/from16 v0, p0

    invoke-static {v0, v3, v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v5

    .line 366
    sput-object v5, Lcom/isaigu/gymapp/wearable/NextClient;->shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 367
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_289

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    if-eqz v2, :cond_289

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    .line 368
    :goto_ab
    iget-object v3, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_28d

    :goto_b3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v2, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v6, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    .line 372
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/NextClient;->flags(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)Landroid/view/View;

    move-result-object v7

    .line 373
    if-eqz v7, :cond_d4

    .line 374
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v7, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    :cond_d4
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v10

    .line 378
    iget-boolean v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->first:Z

    if-eqz v2, :cond_2bd

    const-string v2, "\u041f\u044a\u0440\u0432\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "First training"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_e4
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 380
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    if-eqz v2, :cond_2e1

    .line 381
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v11

    .line 382
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->line(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41b00000    # 22.0f

    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v12, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/4 v13, -0x2

    const/high16 v14, 0x3f800000    # 1.0f

    invoke-direct {v3, v12, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v11, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    if-eqz v2, :cond_2d5

    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    if-lez v2, :cond_2d5

    .line 385
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    iget v2, v2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    iget-object v3, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    iget v3, v3, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v12

    iget-object v12, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    iget v12, v12, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->st:I

    int-to-double v12, v12

    div-double/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    move v3, v2

    .line 386
    :goto_135
    if-eqz v3, :cond_163

    .line 387
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    if-lez v3, :cond_2d9

    const-string v2, "+"

    :goto_140
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v12, " %"

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    if-lez v3, :cond_2dd

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_15a
    move-object/from16 v0, p0

    invoke-static {v0, v12, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v11, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 389
    :cond_163
    invoke-virtual {v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 394
    :goto_166
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    if-eqz v2, :cond_1e2

    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e: "

    const-string v11, "Last: "

    invoke-static {v3, v11}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->lastMs:J

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-lez v2, :cond_2f9

    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->lastMs:J

    invoke-static {v12, v13, v8, v9}, Lcom/isaigu/gymapp/wearable/NextClient;->ago(JJ)Ljava/lang/String;

    move-result-object v2

    :goto_189
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 396
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2fd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    iget-object v8, v8, Lcom/isaigu/gymapp/wearable/NextPlan$Snap;->program:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1ae
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->line(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    const/high16 v3, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 398
    const/4 v3, 0x0

    const/high16 v8, 0x41000000    # 8.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v8, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 399
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 402
    :cond_1e2
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_384

    .line 403
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 404
    const/16 v2, 0x8

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 405
    const/4 v2, 0x0

    move v3, v2

    :goto_1f5
    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_301

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u2022 "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v9, 0x41580000    # 13.5f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 407
    const/4 v9, 0x0

    const/high16 v11, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 408
    const/4 v9, 0x0

    const v11, 0x3f933333    # 1.15f

    invoke-virtual {v2, v9, v11}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 409
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 405
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_1f5

    .line 364
    :cond_23f
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_27f

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \u00b7 \u0437\u0430\u043a\u044a\u0441\u043d\u044f\u0432\u0430 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    neg-long v10, v2

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u043c\u0438\u043d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " \u00b7 "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    neg-long v2, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " min late"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_81

    :cond_27f
    const-string v2, " \u00b7 \u0441\u0435\u0433\u0430"

    const-string v3, " \u00b7 now"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_81

    .line 367
    :cond_289
    const-string v2, ""

    goto/16 :goto_ab

    .line 368
    :cond_28d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041a\u043e\u0441\u0442\u044e\u043c "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v6, p2, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Suit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, p2, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_b3

    .line 379
    :cond_2bd
    iget-boolean v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->same:Z

    if-eqz v2, :cond_2cb

    const-string v2, "\u041a\u0430\u0442\u043e \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u044f \u043f\u044a\u0442"

    const-string v3, "As last time"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e4

    :cond_2cb
    const-string v2, "\u041f\u0440\u0435\u043f\u043e\u0440\u044a\u043a\u0430 \u0437\u0430 \u0434\u043d\u0435\u0441"

    const-string v3, "Recommended today"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_e4

    .line 385
    :cond_2d5
    const/4 v2, 0x0

    move v3, v2

    goto/16 :goto_135

    .line 387
    :cond_2d9
    const-string v2, "\u2212"

    goto/16 :goto_140

    :cond_2dd
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_15a

    .line 391
    :cond_2e1
    const-string v2, "\u041f\u0440\u043e\u0433\u0440\u0430\u043c\u0430\u0442\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430 \u00b7 \u0441\u0438\u043b\u0430\u0442\u0430 \u0441\u0435 \u043d\u0430\u0433\u043b\u0430\u0441\u044f\u0432\u0430 \u043d\u0430 \u043c\u044f\u0441\u0442\u043e"

    const-string v3, "The client\'s program \u00b7 set the strength on the spot"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41880000    # 17.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_166

    .line 395
    :cond_2f9
    const-string v2, ""

    goto/16 :goto_189

    .line 396
    :cond_2fd
    const-string v2, ""

    goto/16 :goto_1ae

    .line 411
    :cond_301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0417\u0430\u0449\u043e \u0442\u0430\u043a\u0430? ("

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v9, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, ")"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Why? ("

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->why:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  \u203a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41580000    # 13.5f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v9, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 413
    const/4 v3, 0x0

    const/high16 v9, 0x41400000    # 12.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/4 v11, 0x0

    const/high16 v12, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v12

    invoke-virtual {v2, v3, v9, v11, v12}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 414
    new-instance v3, Lcom/isaigu/gymapp/wearable/NextClient$Fold;

    invoke-direct {v3, v8}, Lcom/isaigu/gymapp/wearable/NextClient$Fold;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 416
    invoke-virtual {v10, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 418
    :cond_384
    if-eqz v7, :cond_5b6

    const/16 v2, 0xc

    :goto_388
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v10, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 420
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 421
    iget-wide v2, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->nextApptMs:J

    const-wide/16 v8, 0x0

    cmp-long v2, v2, v8

    if-lez v2, :cond_3c3

    .line 422
    const-string v2, "\u0421\u043b\u0435\u0434\u0432\u0430\u0449 \u0447\u0430\u0441: "

    const-string v3, "Next appointment: "

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->nextApptMs:J

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/NextClient;->day(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v8, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->nextApptMs:J

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_3c3
    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_5b9

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_5b9

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    move-object v3, v2

    .line 425
    :goto_3da
    if-eqz v3, :cond_439

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_439

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v8, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v10, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v2, v8, v10

    if-eqz v2, :cond_439

    .line 426
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5bd

    const-string v2, "  \u00b7  "

    :goto_3fc
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u0437\u0430\u043c\u0435\u043d\u044f \u201e"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\u201c"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "replaces \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v9, "\""

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_439
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_464

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_464

    .line 429
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_5c1

    const-string v2, "  \u00b7  "

    :goto_459
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_464
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_491

    .line 432
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41480000    # 12.5f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 433
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v7, 0x41200000    # 10.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 434
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 436
    :cond_491
    const-string v2, "\u041d\u0435 \u0437\u0430 \u0442\u043e\u0437\u0438 \u0447\u0430\u0441"

    const-string v3, "Not for this appointment"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 437
    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v7, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/high16 v9, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v2, v3, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 438
    new-instance v3, Lcom/isaigu/gymapp/wearable/NextClient$Skip;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/NextClient$Skip;-><init>()V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 439
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 440
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V

    .line 442
    iget-object v2, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    .line 443
    const-string v3, "\u041f\u043e-\u043a\u044a\u0441\u043d\u043e"

    const-string v6, "Later"

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-static {v0, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 444
    new-instance v6, Lcom/isaigu/gymapp/wearable/NextClient$Later;

    invoke-direct {v6}, Lcom/isaigu/gymapp/wearable/NextClient$Later;-><init>()V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 445
    const v6, 0x3f4ccccd    # 0.8f

    const/4 v7, 0x0

    move-object/from16 v0, p0

    invoke-static {v6, v7, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v2, v3, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 446
    iget-object v3, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    if-eqz v3, :cond_522

    iget-boolean v3, v4, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->same:Z

    if-nez v3, :cond_522

    .line 447
    const-string v3, "\u041a\u0430\u0442\u043e \u043f\u043e\u0441\u043b\u0435\u0434\u043d\u0438\u044f"

    const-string v4, "As last time"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 448
    new-instance v4, Lcom/isaigu/gymapp/wearable/NextClient$Load;

    const/4 v6, 0x0

    invoke-direct {v4, v6}, Lcom/isaigu/gymapp/wearable/NextClient$Load;-><init>(Z)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 449
    const v4, 0x3f8ccccd    # 1.1f

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-static {v4, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    :cond_522
    const-string v3, "\u0417\u0430\u0440\u0435\u0434\u0438"

    const-string v4, "Load"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 452
    new-instance v4, Lcom/isaigu/gymapp/wearable/NextClient$Load;

    const/4 v6, 0x1

    invoke-direct {v4, v6}, Lcom/isaigu/gymapp/wearable/NextClient$Load;-><init>(Z)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 453
    const v4, 0x3fb33333    # 1.4f

    const/16 v6, 0x8

    move-object/from16 v0, p0

    invoke-static {v4, v6, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 454
    iget-object v2, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/isaigu/gymapp/wearable/NextClient$Dismissed;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/NextClient$Dismissed;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 455
    iget-object v2, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 456
    const v2, 0x3f666666    # 0.9f

    move-object/from16 v0, p0

    invoke-static {v0, v5, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 457
    iget-object v2, v5, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 458
    const-string v3, "next"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ask "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " at "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->hm(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " slot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " by "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->by:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 459
    if-eqz p4, :cond_5c5

    const-string v2, " (plan)"

    :goto_5aa
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    return-void

    .line 418
    :cond_5b6
    const/4 v2, 0x0

    goto/16 :goto_388

    .line 424
    :cond_5b9
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_3da

    .line 426
    :cond_5bd
    const-string v2, ""

    goto/16 :goto_3fc

    .line 429
    :cond_5c1
    const-string v2, ""

    goto/16 :goto_459

    .line 459
    :cond_5c5
    const-string v2, ""

    goto :goto_5aa
.end method

.method private static assistBusy()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 233
    :try_start_1
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->getStage()Lcom/isaigu/gymapp/ai/AiSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AiSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AiSession$Stage;

    if-ne v1, v2, :cond_11

    .line 234
    invoke-static {}, Lcom/isaigu/gymapp/ai/AutoSession;->getStage()Lcom/isaigu/gymapp/ai/AutoSession$Stage;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoSession$Stage;->IDLE:Lcom/isaigu/gymapp/ai/AutoSession$Stage;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_13

    if-eq v1, v2, :cond_12

    :cond_11
    const/4 v0, 0x1

    .line 236
    :cond_12
    :goto_12
    return v0

    .line 235
    :catch_13
    move-exception v1

    goto :goto_12
.end method

.method private static close()V
    .registers 1

    .prologue
    .line 616
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 618
    if-eqz v0, :cond_9

    .line 619
    :try_start_4
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_9} :catch_a

    .line 623
    :cond_9
    :goto_9
    return-void

    .line 621
    :catch_a
    move-exception v0

    goto :goto_9
.end method

.method static condName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 506
    const-string v0, "menopause"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u043c\u0435\u043d\u043e\u043f\u0430\u0443\u0437\u0430"

    const-string v1, "menopause"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 525
    :cond_10
    :goto_10
    return-object p0

    .line 507
    :cond_11
    const-string v0, "prediabetes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u043f\u0440\u0435\u0434\u0434\u0438\u0430\u0431\u0435\u0442"

    const-string v1, "prediabetes"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 508
    :cond_22
    const-string v0, "pcos"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u041f\u041a\u041e\u0421 / \u0445\u043e\u0440\u043c\u043e\u043d\u0438"

    const-string v1, "PCOS / hormones"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 509
    :cond_33
    const-string v0, "thyroid"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0449\u0438\u0442\u043e\u0432\u0438\u0434\u043d\u0430 \u0436\u043b\u0435\u0437\u0430"

    const-string v1, "thyroid"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 510
    :cond_44
    const-string v0, "water"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0437\u0430\u0434\u044a\u0440\u0436\u0430 \u0442\u0435\u0447\u043d\u043e\u0441\u0442\u0438"

    const-string v1, "water retention"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 511
    :cond_55
    const-string v0, "postpartum"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u0441\u043b\u0435\u0434 \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    const-string v1, "after pregnancy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 512
    :cond_66
    const-string v0, "back"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u043a\u0440\u044a\u0441\u0442"

    const-string v1, "lower back"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 513
    :cond_77
    const-string v0, "neck"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u0432\u0440\u0430\u0442 / \u0440\u0430\u043c\u0435\u043d\u0435"

    const-string v1, "neck / shoulders"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 514
    :cond_88
    const-string v0, "knees"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u043a\u043e\u043b\u0435\u043d\u0435"

    const-string v1, "knees"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 515
    :cond_9a
    const-string v0, "joints"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "\u0441\u0442\u0430\u0432\u0438"

    const-string v1, "joints"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 516
    :cond_ac
    const-string v0, "injury"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "\u0441\u0442\u0430\u0440\u0430 \u0442\u0440\u0430\u0432\u043c\u0430"

    const-string v1, "old injury"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 517
    :cond_be
    const-string v0, "diastasis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "\u0434\u0438\u0430\u0441\u0442\u0430\u0437\u0430"

    const-string v1, "diastasis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 518
    :cond_d0
    const-string v0, "osteo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e2

    const-string v0, "\u043e\u0441\u0442\u0435\u043e\u043f\u043e\u0440\u043e\u0437\u0430"

    const-string v1, "osteoporosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 519
    :cond_e2
    const-string v0, "varicose"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    const-string v0, "\u0440\u0430\u0437\u0448\u0438\u0440\u0435\u043d\u0438 \u0432\u0435\u043d\u0438"

    const-string v1, "varicose veins"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 520
    :cond_f4
    const-string v0, "desk"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_106

    const-string v0, "\u0441\u0435\u0434\u044f\u0449\u0430 \u0440\u0430\u0431\u043e\u0442\u0430"

    const-string v1, "desk job"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 521
    :cond_106
    const-string v0, "stress"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_118

    const-string v0, "\u0441\u0442\u0440\u0435\u0441"

    const-string v1, "stress"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 522
    :cond_118
    const-string v0, "sleep"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12a

    const-string v0, "\u043b\u043e\u0448 \u0441\u044a\u043d / \u0443\u043c\u043e\u0440\u0430"

    const-string v1, "poor sleep / fatigue"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 523
    :cond_12a
    const-string v0, "senior"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13c

    const-string v0, "60+ / \u0441\u043b\u0430\u0431\u0438 \u043c\u0443\u0441\u043a\u0443\u043b\u0438"

    const-string v1, "60+ / low muscle"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 524
    :cond_13c
    const-string v0, "sensitive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u0435\u043d \u043a\u044a\u043c \u0442\u043e\u043a\u0430"

    const-string v1, "sensitive to current"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10
.end method

.method static contraName(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 529
    const-string v0, "pregnancy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "\u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442"

    const-string v1, "pregnancy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 542
    :cond_10
    :goto_10
    return-object p0

    .line 530
    :cond_11
    const-string v0, "implant"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    const-string v0, "\u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440 / \u0438\u043c\u043f\u043b\u0430\u043d\u0442"

    const-string v1, "pacemaker / implant"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 531
    :cond_22
    const-string v0, "cardiovascular"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    const-string v0, "\u0441\u044a\u0440\u0434\u0435\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435"

    const-string v1, "heart disease"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 532
    :cond_33
    const-string v0, "circulation"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_44

    const-string v0, "\u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430 / \u0432\u0435\u043d\u0438"

    const-string v1, "thrombosis / veins"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 533
    :cond_44
    const-string v0, "hernia"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    const-string v0, "\u0445\u0435\u0440\u043d\u0438\u044f"

    const-string v1, "hernia"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 534
    :cond_55
    const-string v0, "cancer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_66

    const-string v0, "\u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v1, "cancer"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 535
    :cond_66
    const-string v0, "bleeding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    const-string v0, "\u043a\u044a\u0440\u0432\u0435\u043d\u0435"

    const-string v1, "bleeding"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 536
    :cond_77
    const-string v0, "epilepsy"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    const-string v0, "\u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f"

    const-string v1, "epilepsy"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_10

    .line 537
    :cond_88
    const-string v0, "neurological"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9a

    const-string v0, "\u043d\u0435\u0432\u0440\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e"

    const-string v1, "neurological"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 538
    :cond_9a
    const-string v0, "recent_surgery"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ac

    const-string v0, "\u0441\u043a\u043e\u0440\u043e\u0448\u043d\u0430 \u043e\u043f\u0435\u0440\u0430\u0446\u0438\u044f"

    const-string v1, "recent surgery"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 539
    :cond_ac
    const-string v0, "skin_lesion"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "\u0440\u0430\u043d\u0438 \u043f\u043e \u043a\u043e\u0436\u0430\u0442\u0430"

    const-string v1, "skin lesions"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 540
    :cond_be
    const-string v0, "kidney"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d0

    const-string v0, "\u0431\u044a\u0431\u0440\u0435\u0446\u0438"

    const-string v1, "kidneys"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10

    .line 541
    :cond_d0
    const-string v0, "tuberculosis"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "\u0442\u0443\u0431\u0435\u0440\u043a\u0443\u043b\u043e\u0437\u0430"

    const-string v1, "tuberculosis"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_10
.end method

.method static day(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 339
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/util/Locale;

    const-string v1, "bg"

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 340
    :goto_d
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "EEE d MMM"

    invoke-direct {v1, v2, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 339
    :cond_1e
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    goto :goto_d
.end method

.method static done(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Z
    .registers 8

    .prologue
    const-wide/16 v4, 0x0

    .line 92
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->key()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-lez v0, :cond_27

    const/4 v0, 0x1

    :goto_26
    return v0

    :cond_27
    const/4 v0, 0x0

    goto :goto_26
.end method

.method public static enabled(Landroid/content/Context;)Z
    .registers 4

    .prologue
    .line 68
    :try_start_0
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "on"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_a} :catch_c

    move-result v0

    .line 70
    :goto_b
    return v0

    .line 69
    :catch_c
    move-exception v0

    .line 70
    const/4 v0, 0x0

    goto :goto_b
.end method

.method static flags(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)Landroid/view/View;
    .registers 15

    .prologue
    const/4 v6, 0x2

    const/high16 v12, 0x41600000    # 14.0f

    const/high16 v11, 0x41200000    # 10.0f

    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 464
    if-nez p1, :cond_b

    .line 465
    const/4 v0, 0x0

    .line 501
    :goto_a
    return-object v0

    .line 467
    :cond_b
    const-string v0, "xems_user_profiles"

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, ""

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\|"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 469
    array-length v1, v0

    if-le v1, v6, :cond_54

    aget-object v0, v0, v6

    .line 470
    :goto_38
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/NextPlan;->own(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;)[Ljava/lang/String;

    move-result-object v5

    .line 471
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_57

    aget-object v1, v5, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_57

    aget-object v1, v5, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_57

    .line 472
    const/4 v0, 0x0

    goto :goto_a

    .line 469
    :cond_54
    const-string v0, ""

    goto :goto_38

    .line 474
    :cond_57
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 475
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ed

    .line 476
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    move v4, v2

    :goto_6e
    if-ge v4, v8, :cond_8c

    aget-object v9, v7, v4

    .line 478
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_89

    const-string v1, ", "

    :goto_7a
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v9}, Lcom/isaigu/gymapp/wearable/NextClient;->contraName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_6e

    .line 478
    :cond_89
    const-string v1, ""

    goto :goto_7a

    .line 480
    :cond_8c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u26a0  "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " \u2014 \u043e\u0431\u0441\u044a\u0434\u0438 \u043f\u0440\u0435\u0434\u0438 \u0441\u0442\u0430\u0440\u0442\u0430"

    const-string v6, " \u2014 talk it through before the start"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x41680000    # 14.5f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    invoke-static {p0, v1, v4, v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 482
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v1, v4, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 483
    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/16 v6, 0x22

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->DANGER:I

    const/16 v8, 0x66

    .line 484
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {p0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    .line 483
    invoke-static {v4, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 485
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    :cond_ed
    aget-object v1, v5, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_fd

    aget-object v1, v5, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_173

    .line 488
    :cond_fd
    new-array v1, v10, [Landroid/widget/LinearLayout;

    .line 489
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_138

    const/16 v0, 0x8

    :goto_10b
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 490
    aget-object v0, v5, v10

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    move v0, v2

    :goto_11c
    if-ge v0, v6, :cond_13a

    aget-object v7, v4, v0

    .line 491
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_135

    .line 492
    aget-object v8, v1, v2

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/NextClient;->condName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    invoke-static {p0, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v7

    invoke-static {p0, v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 490
    :cond_135
    add-int/lit8 v0, v0, 0x1

    goto :goto_11c

    :cond_138
    move v0, v2

    .line 489
    goto :goto_10b

    .line 495
    :cond_13a
    aget-object v0, v5, v2

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    move v0, v2

    :goto_144
    if-ge v0, v5, :cond_173

    aget-object v6, v4, v0

    .line 496
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_170

    .line 497
    aget-object v7, v1, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\uff0b "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/NextPlan;->focusName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {p0, v6, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v6

    invoke-static {p0, v7, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 495
    :cond_170
    add-int/lit8 v0, v0, 0x1

    goto :goto_144

    :cond_173
    move-object v0, v3

    .line 501
    goto/16 :goto_a
.end method

.method private static held(IJ)Z
    .registers 8

    .prologue
    .line 277
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->LOADED:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 278
    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/32 v2, 0x249f00

    cmp-long v0, v0, v2

    if-gez v0, :cond_1d

    const/4 v0, 0x1

    :goto_1c
    return v0

    :cond_1d
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method static hm(J)Ljava/lang/String;
    .registers 6

    .prologue
    .line 335
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static invalidate()V
    .registers 2

    .prologue
    const-wide/16 v0, 0x0

    .line 142
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NextClient;->readAt:J

    .line 143
    sput-wide v0, Lcom/isaigu/gymapp/wearable/NextClient;->checkedAt:J

    .line 144
    return-void
.end method

.method static isShowing()Z
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 324
    :try_start_1
    sget-object v1, Lcom/isaigu/gymapp/wearable/NextClient;->shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/isaigu/gymapp/wearable/NextClient;->shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    if-eqz v1, :cond_16

    sget-object v1, Lcom/isaigu/gymapp/wearable/NextClient;->shown:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_12} :catch_17

    move-result v1

    if-eqz v1, :cond_16

    const/4 v0, 0x1

    .line 326
    :cond_16
    :goto_16
    return v0

    .line 325
    :catch_17
    move-exception v1

    goto :goto_16
.end method

.method public static lead(Landroid/content/Context;)I
    .registers 5

    .prologue
    const/16 v0, 0xa

    .line 81
    :try_start_2
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "lead"

    const/16 v3, 0xa

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_d} :catch_f

    move-result v0

    .line 83
    :goto_e
    return v0

    .line 82
    :catch_f
    move-exception v1

    goto :goto_e
.end method

.method static load(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;Lcom/isaigu/gymapp/wearable/NextPlan$Rec;IZ)V
    .registers 12

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 629
    :try_start_2
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 630
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    .line 631
    :goto_10
    if-eqz v0, :cond_40

    if-ltz p3, :cond_40

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge p3, v2, :cond_40

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object v3, v0

    .line 632
    :goto_21
    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-nez v0, :cond_42

    .line 633
    :cond_2d
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0432\u0435\u0447\u0435 \u043d\u0435 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d."

    const-string v1, "The suit is no longer connected."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 661
    :goto_3d
    return-void

    :cond_3e
    move-object v0, v1

    .line 630
    goto :goto_10

    :cond_40
    move-object v3, v1

    .line 631
    goto :goto_21

    .line 636
    :cond_42
    iget-object v0, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v0, :cond_82

    .line 637
    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0442\u0440\u0435\u043d\u0438\u0440\u0430 \u2014 \u043d\u0435 \u0441\u0435 \u0441\u043c\u0435\u043d\u044f."

    const-string v1, "The suit is training \u2014 not changed."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_58
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_58} :catch_59

    goto :goto_3d

    .line 657
    :catch_59
    move-exception v0

    .line 658
    const-string v1, "next"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "load: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v0, "\u041a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u043d\u0435 \u0441\u0435 \u0437\u0430\u0440\u0435\u0434\u0438."

    const-string v1, "Could not load the client."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3d

    .line 640
    :cond_82
    if-nez p2, :cond_132

    move-object v2, v1

    .line 641
    :goto_85
    :try_start_85
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->program(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    .line 642
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {v0}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 643
    if-nez v0, :cond_14b

    .line 644
    iget-object v0, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object v1, v0

    .line 646
    :goto_98
    iget-object v0, v3, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iput-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 647
    if-eqz v4, :cond_a1

    .line 648
    invoke-virtual {v3, v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 650
    :cond_a1
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->LOADED:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 651
    sput p3, Lcom/isaigu/gymapp/wearable/NextClient;->lastSlot:I

    .line 652
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/NextClient;->markDone(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    .line 653
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->refreshRows(Landroid/app/Activity;)V

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_142

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->line(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e4
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 655
    const-string v3, "next"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loaded user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " slot "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 656
    if-eqz v2, :cond_145

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/NextPlan;->line(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Ljava/lang/String;

    move-result-object v0

    :goto_11d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p4, :cond_148

    const-string v0, " (recommended)"

    :goto_125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    invoke-static {v3, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d

    .line 640
    :cond_132
    if-eqz p4, :cond_13d

    iget-object v0, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    if-eqz v0, :cond_13d

    iget-object v0, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->next:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-object v2, v0

    goto/16 :goto_85

    :cond_13d
    iget-object v0, p2, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-object v2, v0

    goto/16 :goto_85

    .line 654
    :cond_142
    const-string v0, ""

    goto :goto_e4

    .line 656
    :cond_145
    const-string v0, "own program"

    goto :goto_11d

    :cond_148
    const-string v0, " (last)"
    :try_end_14a
    .catch Ljava/lang/Throwable; {:try_start_85 .. :try_end_14a} :catch_59

    goto :goto_125

    :cond_14b
    move-object v1, v0

    goto/16 :goto_98
.end method

.method static markDone(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V
    .registers 10

    .prologue
    .line 96
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "done:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->key()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {v2, v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xf731400

    sub-long/2addr v4, v6

    .line 101
    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3a
    :goto_3a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 102
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v6, "done:"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Long;

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v1, v6, v4

    if-gez v1, :cond_3a

    .line 103
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v2, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_3a

    .line 106
    :cond_74
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    return-void
.end method

.method static nextOf(Lcom/isaigu/gymapp/wearable/Schedule$Appt;)J
    .registers 9

    .prologue
    .line 283
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_39

    .line 284
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 285
    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_35

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_35

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v4, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_35

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    iget-wide v4, p0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v6, 0x36ee80

    add-long/2addr v4, v6

    cmp-long v2, v2, v4

    if-lez v2, :cond_35

    .line 286
    iget-wide v0, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    .line 289
    :goto_34
    return-wide v0

    .line 283
    :cond_35
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 289
    :cond_39
    const-wide/16 v0, 0x0

    goto :goto_34
.end method

.method private static notifyLists(Landroid/view/View;)V
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 673
    instance-of v1, p0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2f

    .line 675
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getAdapter"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_2e

    .line 677
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "notifyDataSetChanged"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_2e} :catch_45

    .line 689
    :cond_2e
    :goto_2e
    return-void

    .line 683
    :cond_2f
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2e

    .line 684
    check-cast p0, Landroid/view/ViewGroup;

    .line 685
    :goto_35
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2e

    .line 686
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/NextClient;->notifyLists(Landroid/view/View;)V

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    .line 679
    :catch_45
    move-exception v0

    goto :goto_2e
.end method

.method public static offer(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 297
    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    :try_start_5
    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-nez v1, :cond_a

    .line 320
    :cond_9
    :goto_9
    return-void

    .line 300
    :cond_a
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 301
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v3

    .line 302
    :goto_18
    if-eqz v3, :cond_5d

    iget-object v1, p1, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v1, v4, v5}, Lcom/isaigu/gymapp/wearable/NextClient;->pickSlot(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainUser;J)I

    move-result v1

    move v4, v1

    .line 303
    :goto_25
    if-gez v4, :cond_6f

    .line 304
    if-eqz v3, :cond_60

    move-object v0, v3

    :goto_2a
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NextClient;->anyRunning(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 305
    const-string v0, "\u0412\u0441\u0438\u0447\u043a\u0438 \u043a\u043e\u0441\u0442\u044e\u043c\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u0430\u0442 \u2014 \u0437\u0430\u0440\u0435\u0434\u0438 \u0441\u043b\u0435\u0434 \u043a\u0440\u0430\u044f."

    const-string v1, "All suits are training \u2014 load after the end."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    :goto_38
    const/4 v1, 0x1

    .line 304
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_9

    .line 317
    :catch_41
    move-exception v0

    .line 318
    const-string v1, "next"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    .line 301
    :cond_5b
    const/4 v3, 0x0

    goto :goto_18

    .line 302
    :cond_5d
    const/4 v1, -0x1

    move v4, v1

    goto :goto_25

    .line 304
    :cond_60
    :try_start_60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_2a

    .line 306
    :cond_66
    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043a\u043e\u0441\u0442\u044e\u043c."

    const-string v1, "No suit connected."

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    :cond_6f
    move v1, v0

    move v2, v0

    .line 310
    :goto_71
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_92

    .line 311
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->key()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    or-int/2addr v2, v0

    .line 310
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_71

    .line 313
    :cond_92
    if-nez v2, :cond_99

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_99
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v1, 0x1

    invoke-static {p0, p1, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/NextClient;->ask(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;ILcom/isaigu/gymapp/train/model/TrainItem;Z)V
    :try_end_a3
    .catch Ljava/lang/Throwable; {:try_start_60 .. :try_end_a3} :catch_41

    goto/16 :goto_9
.end method

.method static onClosed(ILcom/isaigu/gymapp/wearable/SessionRec;J)V
    .registers 4

    .prologue
    .line 150
    sput p0, Lcom/isaigu/gymapp/wearable/NextClient;->lastSlot:I

    .line 151
    return-void
.end method

.method static pickSlot(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainUser;J)I
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            "J)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 252
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    .line 253
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_45

    .line 254
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 255
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_41

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_41

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-nez v4, :cond_41

    .line 256
    if-eqz p1, :cond_3a

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v4, :cond_3a

    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v6, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_3a

    .line 273
    :goto_39
    return v1

    .line 259
    :cond_3a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_7

    .line 262
    :cond_45
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 263
    const/4 v1, -0x1

    goto :goto_39

    .line 265
    :cond_4d
    sget v0, Lcom/isaigu/gymapp/wearable/NextClient;->lastSlot:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    sget v0, Lcom/isaigu/gymapp/wearable/NextClient;->lastSlot:I

    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/NextClient;->held(IJ)Z

    move-result v0

    if-nez v0, :cond_64

    .line 266
    sget v1, Lcom/isaigu/gymapp/wearable/NextClient;->lastSlot:I

    goto :goto_39

    :cond_64
    move v1, v2

    .line 268
    :goto_65
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_8a

    .line 269
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0, p2, p3}, Lcom/isaigu/gymapp/wearable/NextClient;->held(IJ)Z

    move-result v0

    if-nez v0, :cond_86

    .line 270
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_39

    .line 268
    :cond_86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_65

    .line 273
    :cond_8a
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_39
.end method

.method static prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .registers 3

    .prologue
    .line 63
    const-string v0, "xems_next_client"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method static refreshRows(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 666
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NextClient;->notifyLists(Landroid/view/View;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 670
    :goto_b
    return-void

    .line 667
    :catch_c
    move-exception v0

    .line 668
    const-string v1, "next"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refresh: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .registers 4

    .prologue
    .line 75
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "on"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 76
    return-void
.end method

.method public static setLead(Landroid/content/Context;I)V
    .registers 6

    .prologue
    .line 88
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->prefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "lead"

    const/4 v2, 0x0

    const/16 v3, 0x3c

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 89
    return-void
.end method

.method public static soon(Landroid/content/Context;J)Ljava/util/Map;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 118
    if-eqz p0, :cond_d

    :try_start_7
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    :cond_d
    move-object v0, v1

    .line 137
    :goto_e
    return-object v0

    .line 121
    :cond_f
    sget-wide v2, Lcom/isaigu/gymapp/wearable/NextClient;->readAt:J

    sub-long v2, p1, v2

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_2b

    .line 122
    sput-wide p1, Lcom/isaigu/gymapp/wearable/NextClient;->readAt:J

    .line 123
    const-wide/32 v2, 0xa4cb80

    sub-long v2, p1, v2

    const-wide/32 v4, 0x48190800

    add-long/2addr v4, p1

    invoke-static {p0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/Schedule;->read(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    .line 125
    :cond_2b
    const/4 v0, 0x0

    move v2, v0

    :goto_2d
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a9

    .line 126
    sget-object v0, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 127
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v3, :cond_7a

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v6, 0x124f80

    sub-long v6, p1, v6

    cmp-long v3, v4, v6

    if-ltz v3, :cond_7a

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v6, 0x5265c0

    add-long/2addr v6, p1

    cmp-long v3, v4, v6

    if-gtz v3, :cond_7a

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    .line 128
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7a

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/NextClient;->done(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Z

    move-result v3

    if-nez v3, :cond_7a

    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v6, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v8, 0x2932e0

    sub-long/2addr v6, v8

    .line 129
    invoke-static {p0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/NextClient;->trainedSince(Landroid/content/Context;JJ)Z

    move-result v3

    if-eqz v3, :cond_7e

    .line 125
    :cond_7a
    :goto_7a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2d

    .line 132
    :cond_7e
    iget-object v3, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v4, v3, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-wide v4, v0, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8f
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_8f} :catch_90

    goto :goto_7a

    .line 134
    :catch_90
    move-exception v0

    .line 135
    const-string v2, "next"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "soon: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a9
    move-object v0, v1

    .line 137
    goto/16 :goto_e
.end method

.method static tick(Landroid/content/Context;JLjava/util/List;I)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 156
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/isaigu/gymapp/wearable/NextClient;->tickImpl(Landroid/content/Context;JLjava/util/List;I)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_4

    .line 160
    :goto_3
    return-void

    .line 157
    :catch_4
    move-exception v0

    .line 158
    const-string v1, "next"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tick: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static tickImpl(Landroid/content/Context;JLjava/util/List;I)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p0, :cond_c

    sget-wide v4, Lcom/isaigu/gymapp/wearable/NextClient;->checkedAt:J

    sub-long v4, p1, v4

    const-wide/16 v6, 0x3a98

    cmp-long v4, v4, v6

    if-gez v4, :cond_d

    .line 209
    :cond_c
    :goto_c
    return-void

    .line 166
    :cond_d
    sput-wide p1, Lcom/isaigu/gymapp/wearable/NextClient;->checkedAt:J

    .line 167
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/NextClient;->enabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/Schedule;->canRead(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->isShowing()Z

    move-result v4

    if-nez v4, :cond_c

    .line 170
    sget-wide v4, Lcom/isaigu/gymapp/wearable/NextClient;->readAt:J

    sub-long v4, p1, v4

    const-wide/32 v6, 0x1d4c0

    cmp-long v4, v4, v6

    if-lez v4, :cond_40

    .line 171
    sput-wide p1, Lcom/isaigu/gymapp/wearable/NextClient;->readAt:J

    .line 172
    const-wide/32 v4, 0xa4cb80

    sub-long v4, p1, v4

    const-wide/32 v6, 0x48190800

    add-long v6, v6, p1

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5, v6, v7}, Lcom/isaigu/gymapp/wearable/Schedule;->read(Landroid/content/Context;JJ)Ljava/util/List;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    .line 177
    :cond_40
    if-eqz p3, :cond_c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/NextClient;->assistBusy()Z

    move-result v4

    if-nez v4, :cond_c

    if-lez p4, :cond_50

    invoke-static/range {p3 .. p3}, Lcom/isaigu/gymapp/wearable/NextClient;->anyFree(Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 180
    :cond_50
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v7

    .line 182
    if-eqz v7, :cond_c

    invoke-virtual {v7}, Landroid/app/Activity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_c

    invoke-virtual {v7}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_c

    .line 185
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/NextClient;->lead(Landroid/content/Context;)I

    move-result v4

    int-to-long v4, v4

    const-wide/32 v8, 0xea60

    mul-long/2addr v8, v4

    .line 186
    const/4 v4, 0x0

    move v6, v4

    :goto_6d
    sget-object v4, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v6, v4, :cond_c

    .line 187
    sget-object v4, Lcom/isaigu/gymapp/wearable/NextClient;->appts:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/isaigu/gymapp/wearable/Schedule$Appt;

    .line 188
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v5, :cond_92

    iget-wide v10, v4, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    sub-long/2addr v10, v8

    cmp-long v5, p1, v10

    if-ltz v5, :cond_92

    iget-wide v10, v4, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v12, 0x124f80

    add-long/2addr v10, v12

    cmp-long v5, p1, v10

    if-lez v5, :cond_96

    .line 186
    :cond_92
    :goto_92
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_6d

    .line 191
    :cond_96
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/NextClient;->done(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)Z

    move-result v5

    if-nez v5, :cond_92

    .line 194
    sget-object v5, Lcom/isaigu/gymapp/wearable/NextClient;->SNOOZE:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->key()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    .line 195
    if-eqz v5, :cond_b4

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    cmp-long v5, p1, v10

    if-ltz v5, :cond_92

    .line 198
    :cond_b4
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v10, v5, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v12, v4, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->begin:J

    const-wide/32 v14, 0x2932e0

    sub-long/2addr v12, v14

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v12, v13}, Lcom/isaigu/gymapp/wearable/NextClient;->trainedSince(Landroid/content/Context;JJ)Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 199
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/wearable/NextClient;->markDone(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/Schedule$Appt;)V

    goto :goto_92

    .line 202
    :cond_cc
    iget-object v5, v4, Lcom/isaigu/gymapp/wearable/Schedule$Appt;->user:Lcom/isaigu/gymapp/bean/TrainUser;

    move-object/from16 v0, p3

    move-wide/from16 v1, p1

    invoke-static {v0, v5, v1, v2}, Lcom/isaigu/gymapp/wearable/NextClient;->pickSlot(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainUser;J)I

    move-result v6

    .line 203
    if-ltz v6, :cond_c

    .line 206
    move-object/from16 v0, p3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/isaigu/gymapp/train/model/TrainItem;

    const/4 v8, 0x0

    invoke-static {v7, v4, v6, v5, v8}, Lcom/isaigu/gymapp/wearable/NextClient;->ask(Landroid/app/Activity;Lcom/isaigu/gymapp/wearable/Schedule$Appt;ILcom/isaigu/gymapp/train/model/TrainItem;Z)V

    goto/16 :goto_c
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 331
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static trainedSince(Landroid/content/Context;JJ)Z
    .registers 12

    .prologue
    const/4 v2, 0x0

    .line 241
    invoke-static {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/NextPlan;->history(Landroid/content/Context;J)Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 242
    :goto_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1d

    .line 243
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v4, "start"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    cmp-long v0, v4, p3

    if-ltz v0, :cond_1e

    .line 244
    const/4 v2, 0x1

    .line 247
    :cond_1d
    return v2

    .line 242
    :cond_1e
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6
.end method
