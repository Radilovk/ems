.class final Lcom/isaigu/gymapp/wearable/WearableLivePanel;
.super Ljava/lang/Object;
.source "WearableLivePanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/WearableLivePanel$ShareListener;,
        Lcom/isaigu/gymapp/wearable/WearableLivePanel$LogListener;,
        Lcom/isaigu/gymapp/wearable/WearableLivePanel$CloseListener;,
        Lcom/isaigu/gymapp/wearable/WearableLivePanel$DismissListener;,
        Lcom/isaigu/gymapp/wearable/WearableLivePanel$RefreshTask;
    }
.end annotation


# static fields
.field private static final OPAQUE_DIALOG_BG:I = 0x7f080069

.field private static final PANEL_WIDTH_DP:I = 0x1cc

.field private static final REFRESH_MS:J = 0x3e8L

.field private static final SHARE_RAW_BYTES:I = 0xf000

.field private static final SHARE_REALTIME_BYTES:I = 0x2d000

.field private static ageView:Landroid/widget/TextView;

.field private static bandView:Landroid/widget/TextView;

.field private static caloriesView:Landroid/widget/TextView;

.field private static countView:Landroid/widget/TextView;

.field private static dialog:Landroid/support/v7/app/AlertDialog;

.field private static f3View:Landroid/widget/TextView;

.field private static f5View:Landroid/widget/TextView;

.field private static final handler:Landroid/os/Handler;

.field private static hrView:Landroid/widget/TextView;

.field private static rateView:Landroid/widget/TextView;

.field private static final refreshTask:Ljava/lang/Runnable;

.field private static stateView:Landroid/widget/TextView;

.field private static stepsView:Landroid/widget/TextView;

.field private static zoneView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;

    .line 44
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel$RefreshTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$RefreshTask;-><init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refreshTask:Ljava/lang/Runnable;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500()Landroid/support/v7/app/AlertDialog;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 23
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->shareRecording(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$800()Ljava/lang/Runnable;
    .registers 1

    .prologue
    .line 23
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refreshTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900()V
    .registers 0

    .prologue
    .line 23
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->clearRefs()V

    return-void
.end method

.method private static addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;
    .registers 11

    .prologue
    const/4 v5, -0x2

    const/4 v4, 0x0

    .line 192
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 193
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 194
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 195
    const/high16 v1, 0x40e00000    # 7.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 196
    invoke-virtual {v0, v4, v1, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 197
    const/high16 v1, 0x41600000    # 14.0f

    invoke-static {p0, p2, v1, p4, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 198
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 200
    const-string v1, "\u2014"

    const/high16 v2, 0x41800000    # 16.0f

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, p3, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 201
    const v2, 0x800005

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 202
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    return-object v1
.end method

.method private static clearRefs()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 176
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 177
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    .line 178
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    .line 179
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->zoneView:Landroid/widget/TextView;

    .line 180
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stepsView:Landroid/widget/TextView;

    .line 181
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->caloriesView:Landroid/widget/TextView;

    .line 182
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->f3View:Landroid/widget/TextView;

    .line 183
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->f5View:Landroid/widget/TextView;

    .line 184
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->rateView:Landroid/widget/TextView;

    .line 185
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->ageView:Landroid/widget/TextView;

    .line 186
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->countView:Landroid/widget/TextView;

    .line 187
    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->bandView:Landroid/widget/TextView;

    .line 188
    return-void
.end method

.method static dismiss()V
    .registers 2

    .prologue
    .line 165
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refreshTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 166
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 168
    :try_start_b
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->dismiss()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_10} :catch_14

    .line 172
    :cond_10
    :goto_10
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->clearRefs()V

    .line 173
    return-void

    .line 169
    :catch_14
    move-exception v0

    goto :goto_10
.end method

.method private static num(I)Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    if-ltz p0, :cond_7

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "\u2014"

    goto :goto_6
.end method

.method static refresh()V
    .registers 14

    .prologue
    const-wide/16 v12, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 214
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    if-eqz v0, :cond_c

    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    if-nez v0, :cond_d

    .line 260
    :cond_c
    :goto_c
    return-void

    .line 217
    :cond_d
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v7

    .line 218
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->link()Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;

    move-result-object v8

    .line 219
    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastState()Ljava/lang/String;

    move-result-object v6

    .line 220
    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastRealtimeEventMs()J

    move-result-wide v0

    .line 221
    cmp-long v2, v0, v12

    if-lez v2, :cond_166

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v0, v10, v0

    .line 222
    :goto_2d
    const-string v2, "streaming"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16a

    const-wide/16 v10, 0x2710

    cmp-long v2, v0, v10

    if-lez v2, :cond_16a

    move v2, v3

    .line 224
    :goto_3c
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->stateText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 225
    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->isErrorState(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_16d

    const v6, -0x10acb0

    .line 228
    :goto_49
    if-eqz v2, :cond_1ad

    .line 229
    const-string v2, "\u041d\u044f\u043c\u0430 \u043d\u043e\u0432\u0438 \u0434\u0430\u043d\u043d\u0438"

    const-string v5, "No new data"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    :goto_53
    sget-object v5, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 232
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    const v5, -0xeeeeef

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 233
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    const/high16 v5, 0x41600000    # 14.0f

    .line 234
    invoke-static {v7, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    .line 233
    invoke-static {v6, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 236
    if-eqz v7, :cond_180

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/WearableConfig;->getHrThreshold(Landroid/content/Context;)I

    move-result v2

    .line 237
    :goto_76
    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastRawHr()I

    move-result v5

    .line 238
    if-lez v5, :cond_184

    .line 239
    invoke-static {v5, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneFor(II)I

    move-result v6

    .line 240
    sget-object v9, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, " "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v10, "\u0443\u0434/\u043c\u0438\u043d"

    const-string v11, "bpm"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 241
    sget-object v5, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneColor(I)I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 242
    sget-object v5, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->zoneView:Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Z"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " \u00b7 "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->zoneName(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " \u00b7 "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "\u043f\u0440\u0430\u0433 "

    const-string v10, "limit "

    .line 243
    invoke-static {v9, v10}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 249
    :goto_e9
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stepsView:Landroid/widget/TextView;

    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastSteps()I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->caloriesView:Landroid/widget/TextView;

    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastCalories()I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->f3View:Landroid/widget/TextView;

    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastF3()I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->f5View:Landroid/widget/TextView;

    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getLastF5()I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->num(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getRealtimeEventRate()F

    move-result v2

    .line 254
    sget-object v5, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->rateView:Landroid/widget/TextView;

    const/4 v6, 0x0

    cmpl-float v6, v2, v6

    if-lez v6, :cond_1a7

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%.2f"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v3, v4

    invoke-static {v6, v9, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_138
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->ageView:Landroid/widget/TextView;

    cmp-long v3, v0, v12

    if-ltz v3, :cond_1aa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->ageText(J)Ljava/lang/String;

    move-result-object v0

    :goto_145
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->countView:Landroid/widget/TextView;

    invoke-interface {v8}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBandLink;->getRealtimeEventCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->bandView:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    if-eqz v7, :cond_c

    .line 258
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->bandView:Landroid/widget/TextView;

    invoke-static {v7}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->bandInfo(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_c

    .line 221
    :cond_166
    const-wide/16 v0, -0x1

    goto/16 :goto_2d

    :cond_16a
    move v2, v4

    .line 222
    goto/16 :goto_3c

    .line 226
    :cond_16d
    const-string v9, "streaming"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17c

    if-nez v2, :cond_17c

    const v6, -0x994496

    goto/16 :goto_49

    .line 227
    :cond_17c
    const/16 v6, -0x339a

    goto/16 :goto_49

    .line 236
    :cond_180
    const/16 v2, 0xaa

    goto/16 :goto_76

    .line 245
    :cond_184
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    const-string v6, "--"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    sget-object v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    const v6, -0x555556

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 247
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->zoneView:Landroid/widget/TextView;

    if-nez v5, :cond_1a4

    const-string v2, "\u041c\u0435\u0440\u0438 \u043f\u0443\u043b\u0441\u2026"

    const-string v5, "Measuring\u2026"

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_19f
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_e9

    :cond_1a4
    const-string v2, ""

    goto :goto_19f

    .line 254
    :cond_1a7
    const-string v2, "\u2014"

    goto :goto_138

    .line 255
    :cond_1aa
    const-string v0, "\u2014"

    goto :goto_145

    :cond_1ad
    move-object v2, v5

    goto/16 :goto_53
.end method

.method private static shareRecording(Landroid/app/Activity;)V
    .registers 6

    .prologue
    .line 263
    if-nez p0, :cond_3

    .line 288
    :goto_2
    return-void

    .line 266
    :cond_3
    const-string v0, "band-realtime.csv"

    const v1, 0x2d000

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->readTail(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 268
    const-string v1, "band-raw.csv"

    const v2, 0xf000

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->readTail(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2d

    .line 270
    const-string v0, "\u041e\u0449\u0435 \u043d\u044f\u043c\u0430 \u0437\u0430\u043f\u0438\u0441 \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v1, "Nothing recorded yet \u2014 connect the band"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto :goto_2

    .line 274
    :cond_2d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "=== band-realtime.csv ===\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n=== band-raw.csv ===\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v2, "android.intent.extra.SUBJECT"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XEMS band recording "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 279
    invoke-static {}, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiBand;->getBuildTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 278
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 282
    :try_start_77
    const-string v0, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u0437\u0430\u043f\u0438\u0441\u0430"

    const-string v2, "Share recording"

    .line 283
    invoke-static {v0, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 282
    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_86
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_86} :catch_88

    goto/16 :goto_2

    .line 284
    :catch_88
    move-exception v0

    .line 285
    const-string v0, "\u041d\u044f\u043c\u0430 \u043f\u0440\u0438\u043b\u043e\u0436\u0435\u043d\u0438\u0435 \u0437\u0430 \u0441\u043f\u043e\u0434\u0435\u043b\u044f\u043d\u0435"

    const-string v1, "No app to share with"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->toastBleError(Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method static show(Landroid/app/Activity;)V
    .registers 15

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x2

    const/16 v10, 0x11

    const/4 v9, 0x1

    .line 49
    if-eqz p0, :cond_e

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 162
    :cond_e
    :goto_e
    return-void

    .line 52
    :cond_f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dismiss()V

    .line 53
    const-string v0, "text_primary"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 54
    const-string v1, "text_secondary"

    const v2, -0x4f4f50

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 55
    const-string v2, "bg_elevated"

    const v3, -0xd5d5d6

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableUi;->color(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 57
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 59
    const/high16 v4, 0x41900000    # 18.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 60
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 62
    const-string v5, "\u0414\u0430\u043d\u043d\u0438 \u043e\u0442 \u0433\u0440\u0438\u0432\u043d\u0430\u0442\u0430"

    const-string v6, "Band data"

    .line 63
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/high16 v6, 0x41980000    # 19.0f

    .line 62
    invoke-static {p0, v5, v6, v0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 64
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 67
    const-string v5, ""

    const/high16 v6, 0x41500000    # 13.0f

    invoke-static {p0, v5, v6, v0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    sput-object v5, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    .line 68
    sget-object v5, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 69
    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 70
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    mul-int/lit8 v7, v5, 0x2

    mul-int/lit8 v8, v5, 0x2

    invoke-virtual {v6, v7, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 71
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v11, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    iput v9, v5, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 74
    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 75
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stateView:Landroid/widget/TextView;

    invoke-virtual {v3, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 80
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x41400000    # 12.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v4, v6, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 82
    const-string v6, "--"

    const/high16 v7, 0x42400000    # 48.0f

    invoke-static {p0, v6, v7, v0, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    sput-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    .line 83
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 84
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->hrView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 85
    const-string v6, ""

    const/high16 v7, 0x41600000    # 14.0f

    invoke-static {p0, v6, v7, v1, v9}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v6

    sput-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->zoneView:Landroid/widget/TextView;

    .line 86
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->zoneView:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 87
    sget-object v6, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->zoneView:Landroid/widget/TextView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 88
    const/16 v6, 0xe

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 91
    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 92
    const/high16 v6, 0x41600000    # 14.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->rounded(IF)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {p0, v7}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v5, v4, v6, v4, v7}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 94
    const-string v4, "\u0421\u0442\u044a\u043f\u043a\u0438 (\u0434\u043d\u0435\u0441)"

    const-string v6, "Steps (today)"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->stepsView:Landroid/widget/TextView;

    .line 95
    const-string v4, "\u041a\u0430\u043b\u043e\u0440\u0438\u0438"

    const-string v6, "Calories"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->caloriesView:Landroid/widget/TextView;

    .line 96
    const-string v4, "\u0410\u043a\u0442\u0438\u0432\u043d\u043e\u0441\u0442 (\u043f\u043e\u043b\u0435 3)"

    const-string v6, "Activity (field 3)"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->f3View:Landroid/widget/TextView;

    .line 97
    const-string v4, "\u041f\u043e\u043b\u0435 5"

    const-string v6, "Field 5"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->f5View:Landroid/widget/TextView;

    .line 98
    const-string v4, "\u0421\u044a\u0431\u0438\u0442\u0438\u044f / \u0441\u0435\u043a"

    const-string v6, "Events / s"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->rateView:Landroid/widget/TextView;

    .line 99
    const-string v4, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u043e \u0441\u044a\u0431\u0438\u0442\u0438\u0435"

    const-string v6, "Last event"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->ageView:Landroid/widget/TextView;

    .line 100
    const-string v4, "\u0421\u044a\u0431\u0438\u0442\u0438\u044f \u0432 \u0441\u0435\u0441\u0438\u044f\u0442\u0430"

    const-string v6, "Events this session"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->countView:Landroid/widget/TextView;

    .line 101
    const-string v4, "\u0413\u0440\u0438\u0432\u043d\u0430"

    const-string v6, "Band"

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v5, v4, v0, v1}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->addRow(Landroid/app/Activity;Landroid/widget/LinearLayout;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    sput-object v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->bandView:Landroid/widget/TextView;

    .line 102
    const/16 v4, 0xc

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    const-string v4, "\u0412\u0441\u044f\u043a\u043e \u0441\u044a\u0431\u0438\u0442\u0438\u0435 \u0441\u0435 \u0437\u0430\u043f\u0438\u0441\u0432\u0430 \u0432 band-realtime.csv \u0438 band-raw.csv."

    const-string v5, "Every event is recorded to band-realtime.csv and band-raw.csv."

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {p0, v4, v5, v1, v12}, Lcom/isaigu/gymapp/wearable/WearableUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 107
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setGravity(I)V

    .line 108
    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    const-string v1, "\u0421\u043f\u043e\u0434\u0435\u043b\u0438 \u0437\u0430\u043f\u0438\u0441\u0430"

    const-string v4, "Share recording"

    .line 111
    invoke-static {v1, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v4, -0xd182ce

    const/4 v5, -0x1

    .line 110
    invoke-static {p0, v1, v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v1

    .line 112
    new-instance v4, Lcom/isaigu/gymapp/wearable/WearableLivePanel$ShareListener;

    invoke-direct {v4, v13}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$ShareListener;-><init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    const/16 v4, 0xe

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 116
    invoke-virtual {v1, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 117
    const-string v4, "\u0422\u0435\u0445\u043d\u0438\u0447\u0435\u0441\u043a\u0438 \u043b\u043e\u0433"

    const-string v5, "Technical log"

    .line 118
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 117
    invoke-static {p0, v4, v2, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v4

    .line 119
    new-instance v5, Lcom/isaigu/gymapp/wearable/WearableLivePanel$LogListener;

    invoke-direct {v5, v13}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$LogListener;-><init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const-string v5, "\u0417\u0430\u0442\u0432\u043e\u0440\u0438"

    const-string v6, "Close"

    .line 121
    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    invoke-static {p0, v5, v2, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->button(Landroid/content/Context;Ljava/lang/String;II)Landroid/widget/TextView;

    move-result-object v0

    .line 122
    new-instance v2, Lcom/isaigu/gymapp/wearable/WearableLivePanel$CloseListener;

    invoke-direct {v2, v13}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$CloseListener;-><init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v2, v12, v11, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 125
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v5, v12, v11, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 127
    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 128
    invoke-virtual {v1, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    invoke-virtual {v1, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    const/16 v0, 0xa

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    new-instance v0, Landroid/widget/ScrollView;

    invoke-direct {v0, p0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 135
    new-instance v1, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 138
    new-instance v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel$DismissListener;

    invoke-direct {v0, v13}, Lcom/isaigu/gymapp/wearable/WearableLivePanel$DismissListener;-><init>(Lcom/isaigu/gymapp/wearable/WearableLivePanel$1;)V

    invoke-virtual {v1, v0}, Landroid/support/v7/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 139
    invoke-virtual {v1}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    .line 140
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/support/v7/app/AlertDialog;->setCancelable(Z)V

    .line 141
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0, v9}, Landroid/support/v7/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 143
    :try_start_235
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_243

    .line 145
    const v1, 0x7f080069

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V
    :try_end_243
    .catch Ljava/lang/Throwable; {:try_start_235 .. :try_end_243} :catch_276

    .line 149
    :cond_243
    :goto_243
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 151
    :try_start_248
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->dialog:Landroid/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 152
    if-eqz v0, :cond_25f

    .line 153
    const/high16 v1, 0x43e60000    # 460.0f

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/WearableUi;->dp(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 155
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V
    :try_end_25f
    .catch Ljava/lang/Throwable; {:try_start_248 .. :try_end_25f} :catch_274

    .line 159
    :cond_25f
    :goto_25f
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refresh()V

    .line 160
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refreshTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    sget-object v0, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->handler:Landroid/os/Handler;

    sget-object v1, Lcom/isaigu/gymapp/wearable/WearableLivePanel;->refreshTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_e

    .line 157
    :catch_274
    move-exception v0

    goto :goto_25f

    .line 147
    :catch_276
    move-exception v0

    goto :goto_243
.end method
