.class public final Lcom/isaigu/gymapp/widget/XemsLocalSection;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;,
        Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsDivWatch;
    }
.end annotation


# static fields
.field public static final REQ_EXPORT:I = 0x7e01

.field public static final REQ_IMPORT:I = 0x7e02

.field private static final TAG:Ljava/lang/String; = "xems_local_section"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->startExport(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->startImport(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->confirmFinish(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 25
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static armsReducedText(F)Ljava/lang/String;
    .registers 8

    .prologue
    .line 194
    const/4 v0, 0x4

    new-array v2, v0, [I

    fill-array-data v2, :array_a6

    .line 195
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    const/4 v0, 0x0

    :goto_11
    array-length v1, v2

    if-ge v0, v1, :cond_6e

    .line 198
    aget v1, v2, v0

    invoke-static {v1, p0}, Lcom/isaigu/gymapp/train/utils/ChannelStrengthScale;->armsDivider(IF)F

    move-result v1

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    aget v6, v2, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u00b5s \u00f7"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->fmt(F)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/high16 v6, 0x42c80000    # 100.0f

    div-float v1, v6, v1

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->fmt(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " %)"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    if-nez v0, :cond_68

    const-string v1, ""

    :goto_53
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    if-nez v0, :cond_6b

    const-string v1, ""

    :goto_5e
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 200
    :cond_68
    const-string v1, " \u00b7 "

    goto :goto_53

    .line 201
    :cond_6b
    const-string v1, " \u00b7 "

    goto :goto_5e

    .line 203
    :cond_6e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0440\u044a\u0446\u0435\u0442\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0442 \u0448\u0438\u0440\u0438\u043d\u0430\u0442\u0430 \u043d\u0430 \u0438\u043c\u043f\u0443\u043b\u0441\u0430: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". \u041b\u0438\u043d\u0435\u0439\u043d\u043e \u043c\u0435\u0436\u0434\u0443 \u0442\u044f\u0445."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reduced impulse \u2014 the arms follow the pulse width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Linear in between."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 194
    nop

    :array_a6
    .array-data 4
        0x190
        0x15e
        0xfa
        0x96
    .end array-data
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 34
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    .line 38
    :goto_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 39
    return-void

    .line 35
    :catch_7
    move-exception v0

    .line 36
    const-string v1, "xems_local"

    const-string v2, "attach failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 16

    .prologue
    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, -0x2

    const/4 v1, 0x0

    .line 56
    if-eqz p0, :cond_d

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_e

    .line 190
    :cond_d
    :goto_d
    return-void

    :cond_e
    move-object v0, p1

    .line 59
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v3

    .line 60
    if-eqz v3, :cond_d

    .line 63
    const-string v0, "xems_local_section"

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 64
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_30

    .line 65
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 67
    :cond_30
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v4

    .line 68
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 69
    invoke-virtual {v5, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 70
    const-string v0, "xems_local_section"

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 71
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 72
    invoke-virtual {v5, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 73
    const v0, -0xe1e1e2

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 75
    const-string v0, "\u0422\u0430\u0431\u043b\u0435\u0442 \u0438 \u0434\u0430\u043d\u043d\u0438"

    const-string v2, "Tablet and data"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    invoke-static {p0, v0, v2, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    if-eqz v4, :cond_2c4

    .line 78
    const-string v0, "\u0420\u0435\u0436\u0438\u043c: \u041d\u0410\u0421\u0422\u0420\u041e\u0419\u041a\u0410 (\u0430\u0434\u043c\u0438\u043d)"

    const-string v2, "Mode: SETUP (admin)"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_6f
    const/16 v2, 0xe

    .line 77
    invoke-static {p0, v0, v2, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 80
    if-eqz v4, :cond_2ce

    const/16 v0, -0x48b3

    :goto_79
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v6

    .line 84
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_2d3

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 85
    :goto_96
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v2

    .line 86
    if-eqz v2, :cond_a2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_2d6

    .line 87
    :cond_a2
    const-string v2, "\u041f\u0440\u043e\u0444\u0438\u043b: \u043d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447 (\u0432\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u201e\u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437\u201c)."

    const-string v7, "Profile: no key (enter it under Access and licence)."

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 90
    :goto_aa
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\n"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, "\u041a\u043e\u0441\u0442\u044e\u043c\u0438: "

    const-string v8, "Suits: "

    .line 91
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430, "

    const-string v7, " paired on this tablet, "

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430."

    const-string v6, " from the server."

    .line 92
    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    .line 90
    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 93
    const v2, -0x4f4f50

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 98
    const-string v2, "\u0415\u043a\u0441\u043f\u043e\u0440\u0442"

    const-string v6, "Export"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v6, -0xbc5fb9

    invoke-static {p0, v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    .line 99
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLocalSection$1;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    if-eqz v4, :cond_2ff

    .line 106
    const-string v2, "\u0418\u043c\u043f\u043e\u0440\u0442"

    const-string v6, "Import"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v6, -0xbc5fb9

    invoke-static {p0, v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    .line 107
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLocalSection$2;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 113
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 114
    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    :goto_14a
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->armsMode()Ljava/lang/String;

    move-result-object v2

    .line 133
    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v6, "Arms"

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0xf

    invoke-static {p0, v0, v6, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 134
    const/16 v6, 0x10

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    const-string v0, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_326

    .line 136
    const-string v0, "1:1 \u2014 \u043a\u0430\u043d\u0430\u043b\u044a\u0442 \u0437\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0441 \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0430 \u0441\u0438\u043b\u0430, \u043a\u0430\u0442\u043e \u0434\u0440\u0443\u0433\u0438\u0442\u0435."

    const-string v6, "1:1 \u2014 the arms channel at normal strength, like the others."

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    :goto_17c
    const/16 v6, 0xc

    .line 135
    invoke-static {p0, v0, v6, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v6

    .line 141
    const v0, -0x4f4f50

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v7, Landroid/widget/LinearLayout;

    invoke-direct {v7, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 144
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 145
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reduced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_342

    const-string v0, "\u2713 "

    :goto_1a7
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v9, "Reduced impulse"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 146
    const-string v0, "reduced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_346

    const v0, -0xbc5fb9

    .line 145
    :goto_1c6
    invoke-static {p0, v8, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 147
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;

    const-string v9, "reduced"

    invoke-direct {v8, p0, p1, v9}, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 149
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34b

    const-string v0, "\u2713 "

    :goto_1eb
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "1:1"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 150
    const-string v0, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34f

    const v0, -0xbc5fb9

    .line 149
    :goto_204
    invoke-static {p0, v8, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 151
    new-instance v8, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;

    const-string v9, "full"

    invoke-direct {v8, p0, p1, v9}, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v8, v1, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 153
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v9

    iput v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 154
    invoke-virtual {v7, v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    const-string v0, "reduced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28f

    .line 158
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 160
    const/16 v2, 0x10

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    const-string v2, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d\u0438\u0435 \u043f\u0440\u0438 400 \u00b5s:  \u00f7"

    const-string v7, "Reduction at 400 \u00b5s:  \u00f7"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v7, 0xe

    invoke-static {p0, v2, v7, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 162
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 163
    const/16 v2, 0x2002

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 165
    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setSingleLine(Z)V

    .line 166
    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setTextColor(I)V

    .line 167
    const/4 v2, 0x2

    const/high16 v7, 0x41800000    # 16.0f

    invoke-virtual {v1, v2, v7}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 168
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->armsDivider()F

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->fmt(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 169
    invoke-virtual {v1, v12}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 170
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsDivWatch;

    invoke-direct {v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsDivWatch;-><init>(Landroid/widget/TextView;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 171
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v6, 0x6e

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v6

    invoke-direct {v2, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 172
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    :cond_28f
    if-eqz v4, :cond_2b1

    .line 177
    const-string v0, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430"

    const-string v1, "Finish setup"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x1ac6cb

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    :cond_2b1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 188
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 189
    invoke-virtual {v3, v5, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_d

    .line 79
    :cond_2c4
    const-string v0, "\u0420\u0435\u0436\u0438\u043c: \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b"

    const-string v2, "Mode: user"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6f

    .line 80
    :cond_2ce
    const v0, -0x7e387c

    goto/16 :goto_79

    :cond_2d3
    move v0, v1

    .line 84
    goto/16 :goto_96

    .line 89
    :cond_2d6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u041f\u0440\u043e\u0444\u0438\u043b: \u043a\u043b\u044e\u0447 \u2026"

    const-string v9, "Profile: key \u2026"

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x4

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_aa

    .line 116
    :cond_2ff
    const-string v2, "\u041e\u0431\u043d\u043e\u0432\u0438 \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430"

    const-string v6, "Update from server"

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v6, -0xe1771b

    invoke-static {p0, v2, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    .line 117
    new-instance v6, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;

    invoke-direct {v6, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v6}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v1, v10, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 125
    invoke-static {p0, v11}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v7

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 126
    invoke-virtual {v0, v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_14a

    .line 137
    :cond_326
    const-string v0, "reduced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_338

    .line 138
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->armsDivider()F

    move-result v0

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->armsReducedText(F)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17c

    .line 139
    :cond_338
    const-string v0, "\u041d\u0435 \u0435 \u0438\u0437\u0431\u0440\u0430\u043d\u043e \u2014 \u0440\u0435\u0448\u0430\u0432\u0430 \u043a\u043b\u044e\u0447\u044a\u0442. \u0418\u0437\u0431\u0435\u0440\u0438 \u0438 \u043e\u0441\u0442\u0430\u0432\u0430 \u0437\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430."

    const-string v6, "Not chosen \u2014 the key decides. Choose and it stays for this tablet."

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17c

    .line 145
    :cond_342
    const-string v0, ""

    goto/16 :goto_1a7

    .line 146
    :cond_346
    const v0, -0xc5c5c6

    goto/16 :goto_1c6

    .line 149
    :cond_34b
    const-string v0, ""

    goto/16 :goto_1eb

    .line 150
    :cond_34f
    const v0, -0xc5c5c6

    goto/16 :goto_204
.end method

.method private static button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;
    .registers 5

    .prologue
    .line 316
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 318
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 319
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 320
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 321
    return-object v0
.end method

.method private static confirmFinish(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6

    .prologue
    .line 260
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430?"

    const-string v2, "Finish setup?"

    .line 261
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043c\u0438\u043d\u0430\u0432\u0430 \u0432 \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0441\u043a\u0438 \u0440\u0435\u0436\u0438\u043c: \u043c\u043e\u0434\u0443\u043b\u0438\u0442\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0442 \u043b\u0438\u0446\u0435\u043d\u0437\u0430, \u0432\u0438\u0436\u0434\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u0441\u0434\u0432\u043e\u0435\u043d\u0438\u0442\u0435 \u043a\u043e\u0441\u0442\u044e\u043c\u0438 ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 263
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") \u0438 \u0442\u0435\u0437\u0438, \u043a\u043e\u0438\u0442\u043e \u0441\u044a\u0440\u0432\u044a\u0440\u044a\u0442 \u0434\u043e\u0431\u0430\u0432\u0438. \u041e\u0431\u0440\u0430\u0442\u043d\u043e \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u2014 \u0441 \u0430\u0434\u043c\u0438\u043d \u043f\u0430\u0440\u043e\u043b\u0430\u0442\u0430 \u0432 \u201e\u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437\u201c."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The tablet switches to user mode: modules follow the licence and only the paired suits ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 267
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") and those the server adds are shown. Back to setup with the admin password in \"Access & licence\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 262
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u043a\u043b\u044e\u0447\u0438"

    const-string v2, "Lock"

    .line 269
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u0430\u0437"

    const-string v2, "Cancel"

    .line 276
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 278
    return-void
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 5

    .prologue
    .line 332
    const/4 v0, 0x1

    int-to-float v1, p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .registers 6

    .prologue
    const/4 v3, 0x0

    .line 281
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1a

    .line 282
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 283
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 301
    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    move v2, v3

    .line 286
    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_55

    .line 287
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 288
    instance-of v0, v1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_45

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_45

    move-object v0, v1

    .line 289
    check-cast v0, Landroid/widget/ScrollView;

    .line 290
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_45

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_45

    .line 291
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_19

    .line 294
    :cond_45
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_51

    .line 295
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 296
    if-nez v0, :cond_19

    .line 286
    :cond_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_55
    move-object v0, p0

    .line 301
    goto :goto_19
.end method

.method static fmt(F)Ljava/lang/String;
    .registers 4

    .prologue
    const/high16 v1, 0x41200000    # 10.0f

    .line 208
    mul-float v0, p0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 209
    float-to-int v1, v0

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-nez v1, :cond_16

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_15
    return-object v0

    :cond_16
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    goto :goto_15
.end method

.method private static matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 325
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 327
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 328
    return-object v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 42
    const/4 v1, -0x1

    if-ne p2, v1, :cond_c

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_d

    .line 52
    :cond_c
    :goto_c
    return v0

    .line 45
    :cond_d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 46
    const/16 v2, 0x7e01

    if-ne p1, v2, :cond_1a

    .line 47
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->exportBackup(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_c

    .line 49
    :cond_1a
    const/16 v2, 0x7e02

    if-ne p1, v2, :cond_c

    .line 50
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->importBackup(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_c
.end method

.method private static startExport(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 336
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 337
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 339
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "xems-backup.json"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const/16 v1, 0x7e01

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 341
    return-void
.end method

.method private static startImport(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 344
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 345
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 346
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    const/16 v1, 0x7e02

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 348
    return-void
.end method

.method private static text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 305
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 306
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 308
    const v1, -0x171718

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 309
    if-eqz p3, :cond_1a

    .line 310
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 312
    :cond_1a
    return-object v0
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 351
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method
