.class public final Lcom/isaigu/gymapp/wearable/QuickStart;
.super Ljava/lang/Object;
.source "QuickStart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/QuickStart$Go;,
        Lcom/isaigu/gymapp/wearable/QuickStart$Refresh;
    }
.end annotation


# static fields
.field private static final LOOPS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/isaigu/gymapp/wearable/QuickStart$Go;",
            ">;"
        }
    .end annotation
.end field

.field private static final REFRESH_TAG:Ljava/lang/String; = "xems_refresh"

.field private static final TAG:Ljava/lang/String; = "xems_quick"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/QuickStart;->LOOPS:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static activity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    .prologue
    .line 173
    move-object v0, p0

    :goto_1
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_13

    .line 174
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_c

    .line 175
    check-cast v0, Landroid/app/Activity;

    .line 179
    :goto_b
    return-object v0

    .line 177
    :cond_c
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_1

    .line 179
    :cond_13
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static bindRow(Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 10

    .prologue
    .line 65
    :try_start_0
    instance-of v2, p0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_6

    if-nez p1, :cond_7

    .line 95
    :cond_6
    :goto_6
    return-void

    .line 68
    :cond_7
    move-object v0, p0

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v2, v0

    .line 69
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 70
    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 71
    const-string v3, "xems_quick"

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 72
    if-nez v3, :cond_5f

    .line 73
    const-string v3, "\u25b6"

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/4 v6, -0x1

    const/16 v7, 0x34

    invoke-static {v4, v3, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v3

    .line 74
    const-string v5, "xems_quick"

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 75
    const-string v5, "\u0421\u0442\u0430\u0440\u0442 \u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v6, "Start a training"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/QuickStart;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x42500000    # 52.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x42500000    # 52.0f

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 77
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 78
    const/high16 v6, 0x41800000    # 16.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 79
    const/16 v4, 0x10

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 80
    invoke-virtual {v2, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    :cond_5f
    invoke-static {v2, v3, p1}, Lcom/isaigu/gymapp/wearable/ClientRow;->restyle(Landroid/widget/LinearLayout;Landroid/view/View;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 83
    sget-object v2, Lcom/isaigu/gymapp/wearable/QuickStart;->LOOPS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v3}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/wearable/QuickStart$Go;

    .line 84
    if-eqz v2, :cond_6f

    .line 85
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 87
    :cond_6f
    new-instance v2, Lcom/isaigu/gymapp/wearable/QuickStart$Go;

    invoke-direct {v2, v3, p1}, Lcom/isaigu/gymapp/wearable/QuickStart$Go;-><init>(Landroid/widget/TextView;Lcom/isaigu/gymapp/bean/TrainUser;)V

    .line 88
    sget-object v4, Lcom/isaigu/gymapp/wearable/QuickStart;->LOOPS:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/QuickStart$Go;->paint()V

    .line 91
    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v2, v4, v5}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_84
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_84} :catch_85

    goto :goto_6

    .line 92
    :catch_85
    move-exception v2

    .line 93
    const-string v3, "QuickStart.bindRow"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6
.end method

.method static items()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/train/model/TrainItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static refreshButton(Landroid/view/View;Ljava/lang/Object;)V
    .registers 8

    .prologue
    .line 187
    if-eqz p0, :cond_a

    :try_start_2
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-nez v0, :cond_b

    .line 221
    :cond_a
    :goto_a
    return-void

    .line 190
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 191
    const-string v1, "xems_refresh"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_a

    .line 194
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 195
    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 196
    const-string v2, "\u21bb"

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v5, 0x28

    invoke-static {v1, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v2

    .line 197
    const-string v3, "xems_refresh"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 198
    const-string v3, "\u041e\u0431\u043d\u043e\u0432\u0438"

    const-string v4, "Refresh"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/wearable/QuickStart;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 199
    new-instance v3, Lcom/isaigu/gymapp/wearable/QuickStart$Refresh;

    invoke-direct {v3, p1}, Lcom/isaigu/gymapp/wearable/QuickStart$Refresh;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    const/high16 v3, 0x42200000    # 40.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 201
    instance-of v4, v0, Landroid/widget/LinearLayout;

    if-eqz v4, :cond_70

    .line 202
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 203
    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 204
    const/16 v1, 0x10

    iput v1, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 205
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v2, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    :try_end_68
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_68} :catch_69

    goto :goto_a

    .line 218
    :catch_69
    move-exception v0

    .line 219
    const-string v1, "QuickStart.refreshButton"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 206
    :cond_70
    :try_start_70
    instance-of v4, v0, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_a

    .line 207
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 208
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 209
    const/16 v5, 0xf

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 210
    const/high16 v5, 0x41800000    # 16.0f

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 211
    invoke-virtual {v0, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_a

    .line 213
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 214
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v2, v3

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 215
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_ab
    .catch Ljava/lang/Throwable; {:try_start_70 .. :try_end_ab} :catch_69

    goto/16 :goto_a
.end method

.method public static refreshClients(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 225
    if-eqz p0, :cond_b

    .line 226
    new-instance v0, Lcom/isaigu/gymapp/wearable/QuickStart$Refresh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/QuickStart$Refresh;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/isaigu/gymapp/wearable/QuickStart$Refresh;->onClick(Landroid/view/View;)V

    .line 228
    :cond_b
    return-void
.end method

.method static roundFill(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .registers 4

    .prologue
    .line 130
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 131
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 132
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 133
    return-object v0
.end method

.method static slotFor(Lcom/isaigu/gymapp/bean/TrainUser;)I
    .registers 5

    .prologue
    .line 57
    invoke-static {}, Lcom/isaigu/gymapp/wearable/QuickStart;->items()Ljava/util/List;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, p0, v2, v3}, Lcom/isaigu/gymapp/wearable/NextClient;->pickSlot(Ljava/util/List;Lcom/isaigu/gymapp/bean/TrainUser;J)I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    goto :goto_e
.end method

.method public static start(Landroid/app/Activity;Lcom/isaigu/gymapp/bean/TrainUser;)V
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 139
    if-eqz p0, :cond_6

    if-nez p1, :cond_7

    .line 170
    :cond_6
    :goto_6
    return-void

    .line 142
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/wearable/QuickStart;->items()Ljava/util/List;

    move-result-object v2

    .line 143
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/QuickStart;->slotFor(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v10

    .line 144
    if-eqz v2, :cond_13

    if-gez v10, :cond_2b

    .line 145
    :cond_13
    const-string v2, "\u041d\u044f\u043c\u0430 \u0441\u0432\u043e\u0431\u043e\u0434\u0435\u043d \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u0438 \u043e\u043f\u0438\u0442\u0430\u0439 \u043f\u0430\u043a."

    const-string v3, "No free connected suit \u2014 connect one and try again."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/wearable/QuickStart;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 146
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_23} :catch_24

    goto :goto_6

    .line 167
    :catch_24
    move-exception v2

    .line 168
    const-string v3, "QuickStart.start"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 149
    :cond_2b
    :try_start_2b
    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    move-object v8, v0

    .line 150
    iget-object v2, v8, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_d6

    iget-object v2, v8, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    iget-wide v12, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    cmp-long v2, v6, v12

    if-nez v2, :cond_d6

    move v9, v3

    .line 151
    :goto_46
    const-string v2, ""

    .line 152
    if-nez v9, :cond_8a

    .line 153
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lcom/isaigu/gymapp/wearable/NextPlan;->recommend(Landroid/content/Context;Lcom/isaigu/gymapp/bean/TrainUser;JJ)Lcom/isaigu/gymapp/wearable/NextPlan$Rec;

    move-result-object v2

    .line 154
    if-eqz v2, :cond_d9

    iget-object v2, v2, Lcom/isaigu/gymapp/wearable/NextPlan$Rec;->last:Lcom/isaigu/gymapp/wearable/NextPlan$Snap;

    move-object v3, v2

    .line 155
    :goto_59
    invoke-static {p1, v3, v8}, Lcom/isaigu/gymapp/wearable/NextPlan;->program(Lcom/isaigu/gymapp/bean/TrainUser;Lcom/isaigu/gymapp/wearable/NextPlan$Snap;Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/bean/TrainProgram;

    move-result-object v4

    .line 156
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/BeanUtils;->cloneObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 157
    iget-object v5, v8, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_dd

    :goto_67
    iput-object v2, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    .line 158
    if-eqz v4, :cond_6e

    .line 159
    invoke-virtual {v8, v4}, Lcom/isaigu/gymapp/train/model/TrainItem;->setTrainProgram(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    .line 161
    :cond_6e
    if-eqz v3, :cond_df

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " \u00b7 "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/NextPlan;->line(Lcom/isaigu/gymapp/wearable/NextPlan$Snap;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    :goto_87
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/NextClient;->refreshRows(Landroid/app/Activity;)V

    .line 164
    :cond_8a
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsNav;->goTraining()V

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 166
    const-string v3, "next"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "quick start user "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p1, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " slot "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v9, :cond_fe

    const-string v2, " (already there)"

    :goto_c9
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d6
    move v9, v4

    .line 150
    goto/16 :goto_46

    .line 154
    :cond_d9
    const/4 v2, 0x0

    move-object v3, v2

    goto/16 :goto_59

    :cond_dd
    move-object v2, p1

    .line 157
    goto :goto_67

    .line 161
    :cond_df
    if-eqz v4, :cond_fb

    iget-object v2, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    if-eqz v2, :cond_fb

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v4, Lcom/isaigu/gymapp/bean/TrainProgram;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_87

    :cond_fb
    const-string v2, ""

    goto :goto_87

    .line 166
    :cond_fe
    const-string v2, ""
    :try_end_100
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_100} :catch_24

    goto :goto_c9
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
