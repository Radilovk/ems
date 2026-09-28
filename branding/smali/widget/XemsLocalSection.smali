.class public final Lcom/isaigu/gymapp/widget/XemsLocalSection;
.super Ljava/lang/Object;
.source "XemsLocalSection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;
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
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->startExport(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->startImport(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->confirmFinish(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Landroid/app/Activity;Landroid/view/View;)V
    .registers 2

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V

    return-void
.end method

.method public static attach(Landroid/app/Activity;Landroid/view/View;)V
    .registers 5

    .prologue
    .line 33
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_7

    .line 37
    :goto_3
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalGate;->attach(Landroid/app/Activity;Landroid/view/View;)V

    .line 38
    return-void

    .line 34
    :catch_7
    move-exception v0

    .line 35
    const-string v1, "xems_local"

    const-string v2, "attach failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private static build(Landroid/app/Activity;Landroid/view/View;)V
    .registers 16

    .prologue
    const v3, -0xbc5fb9

    const/high16 v13, 0x3f800000    # 1.0f

    const/16 v12, 0x8

    const/4 v11, -0x2

    const/4 v1, 0x0

    .line 55
    if-eqz p0, :cond_f

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-nez v0, :cond_10

    .line 174
    :cond_f
    :goto_f
    return-void

    :cond_10
    move-object v0, p1

    .line 58
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 59
    if-eqz v4, :cond_f

    .line 62
    const-string v0, "xems_local_section"

    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 63
    if-eqz v2, :cond_32

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_32

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    :cond_32
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->isAdminSession()Z

    move-result v5

    .line 67
    new-instance v6, Landroid/widget/LinearLayout;

    invoke-direct {v6, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 68
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 69
    const-string v0, "xems_local_section"

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 70
    const/16 v0, 0x10

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v0

    .line 71
    invoke-virtual {v6, v0, v0, v0, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 72
    const v0, -0xe1e1e2

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 74
    const-string v0, "\u0422\u0430\u0431\u043b\u0435\u0442 \u0438 \u0434\u0430\u043d\u043d\u0438"

    const-string v2, "Tablet and data"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x14

    const/4 v7, 0x1

    invoke-static {p0, v0, v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    if-eqz v5, :cond_269

    .line 77
    const-string v0, "\u0420\u0435\u0436\u0438\u043c: \u041d\u0410\u0421\u0422\u0420\u041e\u0419\u041a\u0410 (\u0430\u0434\u043c\u0438\u043d). \u0412\u0441\u0438\u0447\u043a\u043e \u0435 \u043e\u0442\u043a\u043b\u044e\u0447\u0435\u043d\u043e; \u0432\u0441\u0435\u043a\u0438 \u043e\u0442\u043a\u0440\u0438\u0442 \u043a\u043e\u0441\u0442\u044e\u043c \u0441\u0435 \u0441\u0434\u0432\u043e\u044f\u0432\u0430 \u043f\u0440\u0438 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043d\u0435."

    const-string v2, "Mode: SETUP (admin). Everything is unlocked; any suit found is paired when it connects."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    :goto_73
    const/16 v2, 0xe

    const/4 v7, 0x1

    .line 76
    invoke-static {p0, v0, v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v2

    .line 81
    if-eqz v5, :cond_273

    const/16 v0, -0x48b3

    :goto_7e
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 82
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v7

    .line 85
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_278

    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->allowedEms()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 86
    :goto_9b
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->key()Ljava/lang/String;

    move-result-object v2

    .line 87
    if-eqz v2, :cond_a7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_27b

    .line 88
    :cond_a7
    const-string v2, "\u041f\u0440\u043e\u0444\u0438\u043b: \u043d\u044f\u043c\u0430 \u043a\u043b\u044e\u0447 (\u0432\u044a\u0432\u0435\u0434\u0438 \u0433\u043e \u0432 \u201e\u0414\u043e\u0441\u0442\u044a\u043f \u0438 \u043b\u0438\u0446\u0435\u043d\u0437\u201c)."

    const-string v8, "Profile: no key (enter it under Access and licence)."

    invoke-static {v2, v8}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    :goto_af
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\n"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "\u041a\u043e\u0441\u0442\u044e\u043c\u0438: "

    const-string v9, "Suits: "

    .line 92
    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, " \u0441\u0434\u0432\u043e\u0435\u043d\u0438 \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430, "

    const-string v8, " paired on this tablet, "

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430."

    const-string v7, " from the server."

    .line 93
    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u041f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0438, \u043f\u0440\u043e\u0433\u0440\u0430\u043c\u0438 \u0438 \u0438\u0441\u0442\u043e\u0440\u0438\u044f \u0441\u0435 \u043f\u0430\u0437\u044f\u0442 \u0441\u0430\u043c\u043e \u043d\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430."

    const-string v7, "Users, programs and history stay on this tablet only."

    .line 94
    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0xd

    .line 91
    invoke-static {p0, v0, v2, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 96
    const v2, -0x4f4f50

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 100
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 101
    const-string v2, "\u0415\u043a\u0441\u043f\u043e\u0440\u0442"

    const-string v7, "Export"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    .line 102
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalSection$1;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 107
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    if-eqz v5, :cond_2a4

    .line 109
    const-string v2, "\u0418\u043c\u043f\u043e\u0440\u0442"

    const-string v7, "Import"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    .line 110
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalSection$2;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$2;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 116
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 117
    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    :goto_15b
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v6, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    if-eqz v5, :cond_256

    .line 135
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->armsMode()Ljava/lang/String;

    move-result-object v2

    .line 136
    const-string v0, "\u0420\u044a\u0446\u0435"

    const-string v5, "Arms"

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0xf

    const/4 v7, 0x1

    invoke-static {p0, v0, v5, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 137
    const/16 v5, 0x10

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    const-string v0, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cb

    .line 139
    const-string v0, "1:1 \u2014 \u043a\u0430\u043d\u0430\u043b\u044a\u0442 \u0437\u0430 \u0440\u044a\u0446\u0435\u0442\u0435 \u0441 \u043d\u043e\u0440\u043c\u0430\u043b\u043d\u0430 \u0441\u0438\u043b\u0430, \u043a\u0430\u0442\u043e \u0434\u0440\u0443\u0433\u0438\u0442\u0435."

    const-string v5, "1:1 \u2014 the arms channel at normal strength, like the others."

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    :goto_190
    const/16 v5, 0xc

    .line 138
    invoke-static {p0, v0, v5, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;

    move-result-object v0

    .line 145
    const v5, -0x4f4f50

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 146
    const/4 v5, 0x2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    new-instance v5, Landroid/widget/LinearLayout;

    invoke-direct {v5, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 148
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 149
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reduced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e7

    const-string v0, "\u2713 "

    :goto_1bb
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441"

    const-string v8, "Reduced impulse"

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 150
    const-string v0, "reduced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2eb

    move v0, v3

    .line 149
    :goto_1d8
    invoke-static {p0, v7, v0}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 151
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;

    const-string v8, "reduced"

    invoke-direct {v7, p0, p1, v8}, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "full"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f0

    const-string v0, "\u2713 "

    :goto_1fd
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, "1:1"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    const-string v7, "full"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2f4

    .line 153
    :goto_213
    invoke-static {p0, v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 155
    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;

    const-string v3, "full"

    invoke-direct {v2, p0, p1, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection$ArmsPick;-><init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 157
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 158
    invoke-virtual {v5, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v6, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const-string v0, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430"

    const-string v1, "Finish setup"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v1, -0x1ac6cb

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v0

    .line 162
    new-instance v1, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;

    invoke-direct {v1, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection$4;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    const/16 v1, 0xc

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    :cond_256
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 172
    const/16 v1, 0x10

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 173
    invoke-virtual {v4, v6, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_f

    .line 79
    :cond_269
    const-string v0, "\u0420\u0435\u0436\u0438\u043c: \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b. \u0412\u0438\u0436\u0434\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u043f\u043e\u0437\u0432\u043e\u043b\u0435\u043d\u0438\u0442\u0435 \u043a\u043e\u0441\u0442\u044e\u043c\u0438."

    const-string v2, "Mode: user. Only the allowed suits are shown."

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_73

    .line 81
    :cond_273
    const v0, -0x7e387c

    goto/16 :goto_7e

    :cond_278
    move v0, v1

    .line 85
    goto/16 :goto_9b

    .line 90
    :cond_27b
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u041f\u0440\u043e\u0444\u0438\u043b: \u043a\u043b\u044e\u0447 \u2026"

    const-string v10, "Profile: key \u2026"

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x4

    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_af

    .line 119
    :cond_2a4
    const-string v2, "\u041e\u0431\u043d\u043e\u0432\u0438 \u043e\u0442 \u0441\u044a\u0440\u0432\u044a\u0440\u0430"

    const-string v7, "Update from server"

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const v7, -0xe1771b

    invoke-static {p0, v2, v7}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;

    move-result-object v2

    .line 120
    new-instance v7, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;

    invoke-direct {v7, p0}, Lcom/isaigu/gymapp/widget/XemsLocalSection$3;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v2, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v1, v11, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 128
    invoke-static {p0, v12}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v8

    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 129
    invoke-virtual {v0, v2, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_15b

    .line 140
    :cond_2cb
    const-string v0, "reduced"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dd

    .line 141
    const-string v0, "\u041d\u0430\u043c\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u0443\u043b\u0441 \u2014 \u0440\u044a\u0446\u0435\u0442\u0435 \u043f\u043e\u043b\u0443\u0447\u0430\u0432\u0430\u0442 1/20 \u043e\u0442 \u0441\u0438\u043b\u0430\u0442\u0430 (\u043f\u043e-\u043c\u0435\u043a\u043e, \u0437\u0430 \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u0438 \u043a\u043b\u0438\u0435\u043d\u0442\u0438)."

    const-string v5, "Reduced impulse \u2014 the arms get 1/20 of the strength (softer, for sensitive clients)."

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_190

    .line 143
    :cond_2dd
    const-string v0, "\u041d\u0435 \u0435 \u0438\u0437\u0431\u0440\u0430\u043d\u043e \u2014 \u0441\u043b\u0435\u0434 \u0437\u0430\u043a\u043b\u044e\u0447\u0432\u0430\u043d\u0435 \u0440\u0435\u0448\u0430\u0432\u0430 \u043a\u043b\u044e\u0447\u044a\u0442. \u0418\u0437\u0431\u0435\u0440\u0438 \u0432\u0435\u0434\u043d\u044a\u0436 \u0438 \u043e\u0441\u0442\u0430\u0432\u0430 \u0437\u0430 \u0442\u0430\u0431\u043b\u0435\u0442\u0430."

    const-string v5, "Not chosen \u2014 after the lock the key decides. Choose once and it stays for this tablet."

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_190

    .line 149
    :cond_2e7
    const-string v0, ""

    goto/16 :goto_1bb

    .line 150
    :cond_2eb
    const v0, -0xc5c5c6

    goto/16 :goto_1d8

    .line 153
    :cond_2f0
    const-string v0, ""

    goto/16 :goto_1fd

    .line 154
    :cond_2f4
    const v3, -0xc5c5c6

    goto/16 :goto_213
.end method

.method private static button(Landroid/app/Activity;Ljava/lang/String;I)Landroid/widget/Button;
    .registers 5

    .prologue
    .line 256
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 257
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    .line 259
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 260
    invoke-virtual {v0, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 261
    return-object v0
.end method

.method private static confirmFinish(Landroid/app/Activity;Landroid/view/View;)V
    .registers 7

    .prologue
    .line 195
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u041a\u0440\u0430\u0439 \u043d\u0430 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430?"

    const-string v2, "Finish setup?"

    .line 196
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0422\u0430\u0431\u043b\u0435\u0442\u044a\u0442 \u043c\u0438\u043d\u0430\u0432\u0430 \u0432 \u043f\u043e\u0442\u0440\u0435\u0431\u0438\u0442\u0435\u043b\u0441\u043a\u0438 \u0440\u0435\u0436\u0438\u043c: \u043c\u043e\u0434\u0443\u043b\u0438\u0442\u0435 \u0441\u043b\u0435\u0434\u0432\u0430\u0442 \u043b\u0438\u0446\u0435\u043d\u0437\u0430, \u0432\u0438\u0436\u0434\u0430\u0442 \u0441\u0435 \u0441\u0430\u043c\u043e \u0441\u0434\u0432\u043e\u0435\u043d\u0438\u0442\u0435 \u043a\u043e\u0441\u0442\u044e\u043c\u0438 ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 198
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") \u0438 \u0442\u0435\u0437\u0438, \u043a\u043e\u0438\u0442\u043e \u0441\u044a\u0440\u0432\u044a\u0440\u044a\u0442 \u0434\u043e\u0431\u0430\u0432\u0438. \u041e\u0431\u0440\u0430\u0442\u043d\u043e \u0432 \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430 \u2014 \u0441 \u043a\u043b\u044e\u0447 0123."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The tablet switches to user mode: modules follow the licence and only the paired suits ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 201
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->pairedCount(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") and those the server adds are shown. Back to setup with the key 0123."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 203
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLicense;->isAdminKey()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 204
    const-string v0, "\n\n\u0412\u041d\u0418\u041c\u0410\u041d\u0418\u0415: \u0430\u043a\u0442\u0438\u0432\u043d\u0438\u044f\u0442 \u043a\u043b\u044e\u0447 \u0435 0123 \u2014 \u043a\u043b\u0438\u0435\u043d\u0442\u044a\u0442 \u0449\u0435 \u043e\u0441\u0442\u0430\u043d\u0435 \u0441 \u043f\u044a\u043b\u043d\u0438 \u043f\u0440\u0430\u0432\u0430. \u0412\u044a\u0432\u0435\u0434\u0438 \u043f\u044a\u0440\u0432\u043e \u043a\u043b\u044e\u0447\u0430 \u043d\u0430 \u043a\u043b\u0438\u0435\u043d\u0442\u0430."

    const-string v3, "\n\nWARNING: the active key is 0123, the customer keeps full rights. Enter the customer\'s key first."

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    :goto_66
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u0417\u0430\u043a\u043b\u044e\u0447\u0438"

    const-string v2, "Lock"

    .line 209
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;

    invoke-direct {v2, p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection$5;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u041e\u0442\u043a\u0430\u0437"

    const-string v2, "Cancel"

    .line 216
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 218
    return-void

    .line 208
    :cond_94
    const-string v0, ""

    goto :goto_66
.end method

.method private static dp(Landroid/app/Activity;I)I
    .registers 5

    .prologue
    .line 272
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

    .line 221
    instance-of v0, p0, Landroid/widget/ScrollView;

    if-eqz v0, :cond_1a

    .line 222
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1a

    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1a

    .line 223
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 241
    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    move v2, v3

    .line 226
    :goto_1b
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_55

    .line 227
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 228
    instance-of v0, v1, Landroid/widget/ScrollView;

    if-eqz v0, :cond_45

    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_45

    move-object v0, v1

    .line 229
    check-cast v0, Landroid/widget/ScrollView;

    .line 230
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getChildCount()I

    move-result v4

    if-lez v4, :cond_45

    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_45

    .line 231
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_19

    .line 234
    :cond_45
    instance-of v0, v1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_51

    .line 235
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->findScrollContent(Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 236
    if-nez v0, :cond_19

    .line 226
    :cond_51
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1b

    :cond_55
    move-object v0, p0

    .line 241
    goto :goto_19
.end method

.method private static matchWrap(Landroid/app/Activity;I)Landroid/widget/LinearLayout$LayoutParams;
    .registers 5

    .prologue
    .line 265
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 267
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLocalSection;->dp(Landroid/app/Activity;I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 268
    return-object v0
.end method

.method public static onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x0

    .line 41
    const/4 v1, -0x1

    if-ne p2, v1, :cond_c

    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_d

    .line 51
    :cond_c
    :goto_c
    return v0

    .line 44
    :cond_d
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 45
    const/16 v2, 0x7e01

    if-ne p1, v2, :cond_1a

    .line 46
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->exportBackup(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_c

    .line 48
    :cond_1a
    const/16 v2, 0x7e02

    if-ne p1, v2, :cond_c

    .line 49
    invoke-static {p0, v1}, Lcom/isaigu/gymapp/widget/XemsLocalStore;->importBackup(Landroid/app/Activity;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_c
.end method

.method private static startExport(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CREATE_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 278
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 279
    const-string v1, "android.intent.extra.TITLE"

    const-string v2, "xems-backup.json"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const/16 v1, 0x7e01

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 281
    return-void
.end method

.method private static startImport(Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 286
    const-string v1, "application/json"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const/16 v1, 0x7e02

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 288
    return-void
.end method

.method private static text(Landroid/app/Activity;Ljava/lang/String;IZ)Landroid/widget/TextView;
    .registers 7

    .prologue
    .line 245
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 246
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 247
    const/4 v1, 0x2

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 248
    const v1, -0x171718

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 249
    if-eqz p3, :cond_1a

    .line 250
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 252
    :cond_1a
    return-object v0
.end method

.method private static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 291
    invoke-static {}, Lcom/isaigu/gymapp/widget/XemsLang;->isBg()Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_6
    return-object p0

    :cond_7
    move-object p0, p1

    goto :goto_6
.end method
