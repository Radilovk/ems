.class public final Lcom/isaigu/gymapp/wearable/XemsHzTest;
.super Ljava/lang/Object;
.source "XemsHzTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/XemsHzTest$Done;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$Off;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$Open;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;,
        Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;
    }
.end annotation


# static fields
.field static final CHANNELS:I = 0xa

.field static final HZ_PRESETS:[I

.field static final LEVELS:[I

.field static final MAX_HZ:I = 0xff

.field static final MAX_LEVEL:I = 0x1e

.field static final MAX_US:I = 0x190

.field static final MIN_HZ:I = 0x1

.field static final MIN_US:I = 0x32

.field static final RENEW_MS:I = 0xbb8

.field static final WORK_S:I = 0x8


# instance fields
.field final a:Landroid/app/Activity;

.field box:Landroid/widget/LinearLayout;

.field ch:I

.field final handler:Landroid/os/Handler;

.field hold:Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

.field hz:I

.field level:I

.field live:Lcom/isaigu/gymapp/train/model/TrainItem;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field us:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->LEVELS:[I

    .line 39
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->HZ_PRESETS:[I

    return-void

    .line 38
    nop

    :array_12
    .array-data 4
        0x1
        0x3
        0x5
        0xa
        0x14
        0x1e
    .end array-data

    .line 39
    :array_22
    .array-data 4
        0x55
        0x78
        0x96
        0xc8
        0xff
    .end array-data
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .registers 5

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->handler:Landroid/os/Handler;

    .line 44
    iput v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->ch:I

    iput v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->us:I

    .line 50
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    .line 51
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 52
    const-string v0, "\u0422\u0435\u0441\u0442 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0438"

    const-string v1, "XEMS \u043a\u043e\u0441\u0442\u044e\u043c \u00b7 \u043f\u0440\u0430\u0437\u0435\u043d, \u043d\u0430 \u0442\u043e\u0432\u0430\u0440 \u2014 \u0431\u0435\u0437 \u0447\u043e\u0432\u0435\u043a \u0432 \u043d\u0435\u0433\u043e"

    const/16 v2, 0x384

    invoke-static {p1, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 53
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->render()V

    .line 54
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 55
    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsHzTest$Done;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$Done;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 57
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 58
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsHzTest$Off;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$Off;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 59
    return-void
.end method

.method public static card(Landroid/app/Activity;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->card(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 75
    const-string v1, "\u0422\u0435\u0441\u0442 \u043d\u0430 \u0447\u0435\u0441\u0442\u043e\u0442\u0438 (XEMS \u043a\u043e\u0441\u0442\u044e\u043c)"

    const/high16 v2, 0x41b00000    # 22.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x1

    invoke-static {p0, v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 76
    const-string v1, "\u0421\u0430\u043c\u043e \u043d\u0430 \u043f\u0440\u0430\u0437\u0435\u043d \u043a\u043e\u0441\u0442\u044e\u043c, \u043d\u0430 \u0442\u043e\u0432\u0430\u0440. \u0414\u043e 255 Hz \u2014 \u043f\u043e\u0432\u0435\u0447\u0435 \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u044a\u0442 \u043d\u0435 \u043f\u043e\u0431\u0438\u0440\u0430."

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {p0, v1, v2, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 78
    const/high16 v2, 0x40c00000    # 6.0f

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v1, v5, v2, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 80
    const-string v1, "\u041e\u0442\u0432\u043e\u0440\u0438 \u0442\u0435\u0441\u0442\u0430"

    const/4 v2, 0x2

    invoke-static {p0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 81
    new-instance v2, Lcom/isaigu/gymapp/wearable/XemsHzTest$Open;

    invoke-direct {v2, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$Open;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/high16 v4, 0x42480000    # 50.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    return-object v0
.end method

.method public static open(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 64
    :try_start_0
    new-instance v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;-><init>(Landroid/app/Activity;)V

    .line 65
    iget-object v1, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 66
    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v1, 0x3f6b851f    # 0.92f

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_14} :catch_15

    .line 70
    :goto_14
    return-void

    .line 67
    :catch_15
    move-exception v0

    .line 68
    const-string v1, "XemsHzTest.open"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_14
.end method

.method static pick()Lcom/isaigu/gymapp/train/model/TrainItem;
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 146
    invoke-static {}, Lcom/isaigu/gymapp/ai/AiSession;->manager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 147
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v3, v0

    .line 148
    :goto_c
    if-nez v3, :cond_12

    move-object v0, v2

    .line 155
    :cond_f
    :goto_f
    return-object v0

    :cond_10
    move-object v3, v2

    .line 147
    goto :goto_c

    .line 149
    :cond_12
    const/4 v0, 0x0

    move v1, v0

    :goto_14
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_41

    .line 150
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 151
    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_32

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v4, :cond_32

    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-nez v4, :cond_36

    .line 149
    :cond_32
    :goto_32
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_14

    .line 152
    :cond_36
    iget-object v4, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v4, v4, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtBridge;->isBodytechMac(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    goto :goto_32

    :cond_41
    move-object v0, v2

    .line 155
    goto :goto_f
.end method

.method static senderOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/CommandSender;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 159
    const-class v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    const-string v1, "sender"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 160
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 161
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/CommandSender;

    return-object v0
.end method


# virtual methods
.method chips(Ljava/lang/String;[IILjava/lang/String;I)Landroid/view/View;
    .registers 16

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 126
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    new-array v5, v3, [Landroid/widget/LinearLayout;

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    move v0, v1

    .line 129
    :goto_1a
    array-length v2, p2

    if-ge v0, v2, :cond_6f

    .line 130
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget v8, p2, v0

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_6a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_43
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aget v2, p2, v0

    if-ne v2, p3, :cond_6d

    move v2, v3

    :goto_50
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->ACCENT:I

    invoke-static {v7, v8, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 132
    new-instance v7, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;

    aget v8, p2, v0

    invoke-direct {v7, p0, p5, v8}, Lcom/isaigu/gymapp/wearable/XemsHzTest$Chip;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;II)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v7, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    aget-object v8, v5, v1

    invoke-static {v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_1a

    .line 130
    :cond_6a
    const-string v2, ""

    goto :goto_43

    :cond_6d
    move v2, v1

    goto :goto_50

    .line 135
    :cond_6f
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 136
    return-object v4
.end method

.method col(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;
    .registers 8

    .prologue
    .line 113
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 115
    invoke-virtual {v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, 0x0

    const/4 v3, -0x2

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 117
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 118
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 119
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    return-object v2
.end method

.method redraw()V
    .registers 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->stop()V

    .line 306
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->render()V

    .line 307
    return-void
.end method

.method render()V
    .registers 14

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/16 v12, 0xa

    const/high16 v6, 0x41a00000    # 20.0f

    const/4 v5, 0x0

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const-string v1, "\u26a0 \u0411\u0435\u0437 \u0447\u043e\u0432\u0435\u043a \u0432 \u043a\u043e\u0441\u0442\u044e\u043c\u0430. \u041f\u044a\u0440\u0432\u043e 1 %, \u043d\u0430 \u0440\u0435\u0437\u0438\u0441\u0442\u043e\u0440 ~1 k\u03a9 \u0441 \u043e\u0441\u0446\u0438\u043b\u043e\u0441\u043a\u043e\u043f. \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0441\u0435 \u0441\u0432\u044a\u0440\u0437\u0432\u0430 \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430 (\u0440\u0435\u0434\u044a\u0442 \u043d\u0435 \u0435 \u0441\u0442\u0430\u0440\u0442\u0438\u0440\u0430\u043d)."

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v1, v2, v3, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 93
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 94
    const-string v1, "\u0427\u0435\u0441\u0442\u043e\u0442\u0430"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hz"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$HzStep;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V

    invoke-static {v2, v3, v7, v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->col(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    const-string v1, "\u0428\u0438\u0440\u0438\u043d\u0430"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->us:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b5s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$UsStep;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V

    invoke-static {v2, v3, v7, v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->col(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 96
    const-string v1, "\u041d\u0438\u0432\u043e"

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;

    invoke-direct {v4, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$LvStep;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V

    invoke-static {v2, v3, v7, v6, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v2

    iget-object v2, v2, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v2}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->col(Ljava/lang/String;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 97
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v6, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const-string v1, "\u0427\u0435\u0441\u0442\u043e\u0442\u0438"

    sget-object v2, Lcom/isaigu/gymapp/wearable/XemsHzTest;->HZ_PRESETS:[I

    iget v3, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    const-string v4, "Hz"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->chips(Ljava/lang/String;[IILjava/lang/String;I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v1, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const-string v7, "\u041d\u0438\u0432\u043e"

    sget-object v8, Lcom/isaigu/gymapp/wearable/XemsHzTest;->LEVELS:[I

    iget v9, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    const-string v10, "%"

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->chips(Ljava/lang/String;[IILjava/lang/String;I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    new-array v8, v12, [I

    move v0, v5

    .line 102
    :goto_fa
    if-ge v0, v12, :cond_103

    add-int/lit8 v1, v0, 0x1

    aput v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_fa

    .line 103
    :cond_103
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const-string v7, "\u041a\u0430\u043d\u0430\u043b"

    iget v9, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->ch:I

    const-string v10, ""

    const/4 v11, 0x2

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->chips(Ljava/lang/String;[IILjava/lang/String;I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const/4 v3, 0x6

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u25b6  \u0414\u0440\u044a\u0436 \u0437\u0430 \u0442\u043e\u043a \u043d\u0430 \u043a\u0430\u043d\u0430\u043b "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->ch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 106
    new-instance v1, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/wearable/XemsHzTest$Touch;-><init>(Lcom/isaigu/gymapp/wearable/XemsHzTest;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const/high16 v5, 0x42800000    # 64.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->box:Landroid/widget/LinearLayout;

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->box:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 110
    return-void
.end method

.method say(Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 140
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->box:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 141
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->box:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->a:Landroid/app/Activity;

    const/high16 v2, 0x41600000    # 14.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v4, 0x0

    invoke-static {v1, p1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 142
    return-void
.end method

.method send(Z)Ljava/lang/String;
    .registers 9

    .prologue
    .line 166
    invoke-static {}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->pick()Lcom/isaigu/gymapp/train/model/TrainItem;

    move-result-object v0

    .line 167
    if-nez v0, :cond_9

    const-string v0, "\u041d\u044f\u043c\u0430 \u0441\u0432\u044a\u0440\u0437\u0430\u043d XEMS \u043a\u043e\u0441\u0442\u044e\u043c \u2014 \u0441\u0432\u044a\u0440\u0436\u0438 \u0433\u043e \u043e\u0442 \u0435\u043a\u0440\u0430\u043d\u0430 \u0422\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    .line 189
    :goto_8
    return-object v0

    .line 168
    :cond_9
    iget-object v1, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v1, v1, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->start:Z

    if-eqz v1, :cond_12

    const-string v0, "\u0420\u0435\u0434\u044a\u0442 \u0432\u044a\u0440\u0432\u0438 \u2014 \u0441\u043f\u0440\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430\u0442\u0430, \u0437\u0430 \u0434\u0430 \u0442\u0435\u0441\u0442\u0432\u0430\u0448"

    goto :goto_8

    .line 170
    :cond_12
    :try_start_12
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->senderOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/CommandSender;

    move-result-object v1

    .line 171
    if-nez v1, :cond_1b

    const-string v0, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043e\u0449\u0435 \u043d\u0435 \u0435 \u0433\u043e\u0442\u043e\u0432"

    goto :goto_8

    .line 172
    :cond_1b
    new-instance v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;

    invoke-direct {v2}, Lcom/isaigu/gymapp/bean/ProgramDataBean;-><init>()V

    .line 173
    iget v3, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hz:I

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->hz:I

    .line 174
    iget v3, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->us:I

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseWidth:I

    .line 175
    iget v3, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->level:I

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenth:I

    .line 176
    const/4 v3, 0x5

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulseContinue:I

    .line 177
    const/4 v3, 0x0

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->pulsePause:I

    .line 178
    const/16 v3, 0x8

    iput v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->workLength:I

    .line 179
    new-instance v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;

    invoke-direct {v3}, Lcom/isaigu/gymapp/bean/PartStrenthBean;-><init>()V

    .line 180
    const/16 v4, 0xa

    new-array v4, v4, [I

    iput-object v4, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    .line 181
    iget-object v4, v3, Lcom/isaigu/gymapp/bean/PartStrenthBean;->buwei:[I

    iget v5, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->ch:I

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x64

    aput v6, v4, v5

    .line 182
    iput-object v3, v2, Lcom/isaigu/gymapp/bean/ProgramDataBean;->strenthBean:Lcom/isaigu/gymapp/bean/PartStrenthBean;

    .line 183
    if-eqz p1, :cond_52

    invoke-virtual {v1}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStart()V

    .line 184
    :cond_52
    const/16 v3, 0xa

    new-array v3, v3, [Z

    const/16 v4, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendDuration(Lcom/isaigu/gymapp/bean/ProgramDataBean;[ZI)V

    .line 185
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->live:Lcom/isaigu/gymapp/train/model/TrainItem;
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_5d} :catch_5f

    .line 186
    const/4 v0, 0x0

    goto :goto_8

    .line 187
    :catch_5f
    move-exception v0

    .line 188
    const-string v1, "XemsHzTest.send"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0413\u0440\u0435\u0448\u043a\u0430: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_8
.end method

.method stop()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hold:Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

    if-eqz v0, :cond_13

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hold:Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;->live:Z

    .line 196
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hold:Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 197
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->hold:Lcom/isaigu/gymapp/wearable/XemsHzTest$Hold;

    .line 199
    :cond_13
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->live:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 200
    iput-object v2, p0, Lcom/isaigu/gymapp/wearable/XemsHzTest;->live:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 201
    if-eqz v0, :cond_22

    .line 203
    :try_start_19
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/XemsHzTest;->senderOf(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/train/model/CommandSender;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/CommandSender;->sendStop()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_22} :catch_23

    .line 209
    :cond_22
    :goto_22
    return-void

    .line 205
    :catch_23
    move-exception v0

    .line 206
    const-string v1, "XemsHzTest.stop"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22
.end method
