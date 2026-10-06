.class public final Lcom/isaigu/gymapp/bodytech/BtAusScreen;
.super Ljava/lang/Object;
.source "BtAusScreen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;,
        Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;,
        Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;,
        Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;
    }
.end annotation


# static fields
.field static final BURST_HZ:[I

.field static final CONTRA:Ljava/lang/String; = "\u041d\u0435 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430 \u043f\u0440\u0438: \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0434\u0435\u0444\u0438\u0431\u0440\u0438\u043b\u0430\u0442\u043e\u0440 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433 \u0438\u043c\u043f\u043b\u0430\u043d\u0442\u0438\u0440\u0430\u043d \u0443\u0440\u0435\u0434; \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442 (\u043a\u043e\u0440\u0435\u043c, \u043a\u0440\u044a\u0441\u0442); \u0430\u043a\u0442\u0438\u0432\u043d\u043e \u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435; \u043d\u0435\u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f; \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430, \u0442\u0435\u0436\u043a\u0438 \u0430\u0440\u0442\u0435\u0440\u0438\u0430\u043b\u043d\u0438 \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0438\u044f, \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u043a\u0440\u044a\u0432\u043e\u0438\u0437\u043b\u0438\u0432; \u0440\u0430\u043d\u0430, \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435 \u0438\u043b\u0438 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435.\n\n\u041f\u044a\u0440\u0432\u043e \u043f\u0440\u0438 \u043b\u0435\u043a\u0430\u0440: \u0434\u0438\u0430\u0431\u0435\u0442 \u0441 \u043d\u0435\u0432\u0440\u043e\u043f\u0430\u0442\u0438\u044f, \u0441\u044a\u0440\u0434\u0435\u0447\u043d\u0430 \u0431\u043e\u043b\u0435\u0441\u0442 \u0438\u043b\u0438 \u0430\u0440\u0438\u0442\u043c\u0438\u044f, \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f, \u043c\u0435\u0442\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u043b\u0430\u043d\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u0430\u043b\u0435\u0440\u0433\u0438\u044f \u043a\u044a\u043c \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438, \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0430 \u043a\u043e\u0436\u043d\u0430 \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442."

.field static final LEVELS:[I


# instance fields
.field final a:Landroid/app/Activity;

.field barFill:Landroid/view/View;

.field barRest:Landroid/view/View;

.field chTv:[Landroid/widget/TextView;

.field lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

.field final mac:Ljava/lang/String;

.field more:Z

.field final run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

.field final sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

.field shown:I

.field shownCur:I

.field tvFeel:Landroid/widget/TextView;

.field tvLeft:Landroid/widget/TextView;

.field tvPhase:Landroid/widget/TextView;

.field tvStage:Landroid/widget/TextView;

.field tvTime:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    return-void

    .line 22
    nop

    :array_12
    .array-data 4
        0x1
        0x3
        0x5
        0xa
        0x14
        0x1e
        0x32
    .end array-data

    .line 23
    :array_24
    .array-data 4
        0x0
        0xa
        0x32
        0x64
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/bodytech/BtAus$T;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    .line 36
    const/4 v0, -0x2

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shownCur:I

    .line 41
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    .line 54
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    .line 55
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->mac:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 57
    if-eqz p2, :cond_a2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_a2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 58
    :goto_2b
    if-eqz p4, :cond_a6

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a6

    .line 59
    :goto_33
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a9

    const-string v0, " \u00b7 "

    :goto_4a
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u043a\u043e\u0441\u0442\u044e\u043c \u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 60
    :cond_5c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041c\u043e\u0434\u0443\u043b\u0430\u0446\u0438\u044f \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p3, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_ac

    :goto_77
    const/16 v1, 0x424

    invoke-static {p1, v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 61
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;)V

    invoke-direct {v0, p2, v1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0, p3}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->load(Lcom/isaigu/gymapp/bodytech/BtAus$T;)V

    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusRun;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 64
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 65
    return-void

    .line 57
    :cond_a2
    const-string v0, ""

    move-object v1, v0

    goto :goto_2b

    .line 58
    :cond_a6
    const-string p4, ""

    goto :goto_33

    .line 59
    :cond_a9
    const-string v0, ""

    goto :goto_4a

    .line 60
    :cond_ac
    const/4 p4, 0x0

    goto :goto_77
.end method

.method static clock(D)Ljava/lang/String;
    .registers 6

    .prologue
    .line 448
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 449
    div-int/lit8 v1, v0, 0x3c

    .line 450
    rem-int/lit8 v2, v0, 0x3c

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v0, 0xa

    if-ge v2, v0, :cond_2b

    const-string v0, "0"

    :goto_1e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2b
    const-string v0, ""

    goto :goto_1e
.end method

.method private field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .registers 9

    .prologue
    .line 274
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;

    invoke-direct {v4, p0, p3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;I)V

    invoke-static {v1, p2, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    return-object v0
.end method

.method private moreBox(Landroid/widget/LinearLayout;)V
    .registers 12

    .prologue
    .line 234
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sel:I

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 236
    const/16 v0, 0x30

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 237
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 238
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u041f\u0430\u043a\u0435\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 239
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/widget/LinearLayout;

    .line 240
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    .line 241
    const/4 v0, 0x0

    :goto_2a
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    array-length v1, v1

    if-ge v0, v1, :cond_7e

    .line 242
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v1, v1, v0

    if-nez v1, :cond_64

    const-string v1, "\u0431\u0435\u0437"

    :goto_39
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v2, v2, v3

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v9, v9, v0

    if-ne v2, v9, :cond_7c

    const/4 v2, 0x1

    :goto_46
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v1, v2, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 244
    new-instance v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v8, 0x4

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v9, v9, v0

    invoke-direct {v2, p0, v8, v9}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v8, 0x0

    aget-object v8, v6, v8

    invoke-static {v2, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 241
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 242
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Hz"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_39

    :cond_7c
    const/4 v2, 0x0

    goto :goto_46

    .line 247
    :cond_7e
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 248
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 249
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 250
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u0424\u043e\u0440\u043c\u0430"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 251
    const/4 v0, 0x1

    new-array v5, v0, [Landroid/widget/LinearLayout;

    .line 252
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    .line 253
    const/4 v0, 0x0

    move v1, v0

    :goto_a9
    const/4 v0, 0x3

    if-ge v1, v0, :cond_da

    .line 254
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v8, v1, 0x1

    aget-object v8, v0, v8

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    aget v0, v0, v3

    if-ne v0, v1, :cond_d8

    const/4 v0, 0x1

    :goto_bd
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v7, v8, v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 255
    new-instance v7, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v8, 0x5

    invoke-direct {v7, p0, v8, v1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v7, v8, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 253
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a9

    .line 254
    :cond_d8
    const/4 v0, 0x0

    goto :goto_bd

    .line 258
    :cond_da
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 259
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0xc

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 262
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    const-string v2, "\u0414\u044a\u043b\u0436\u0438\u043d\u0430 \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v0, v0, v3

    if-nez v0, :cond_17d

    const-string v0, "\u2014"

    :goto_10b
    const/4 v4, 0x4

    invoke-direct {p0, v2, v0, v4}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 265
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0, v3}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v0

    iget-boolean v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    if-nez v0, :cond_144

    .line 266
    const-string v2, "\u0422\u043e\u043a \u0442\u0435\u0447\u0435"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v0, v0, v3

    if-nez v0, :cond_198

    const-string v0, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    :goto_132
    const/4 v4, 0x2

    invoke-direct {p0, v2, v0, v4}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v4, 0xc

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    .line 267
    invoke-static {v2, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    .line 266
    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 269
    :cond_144
    const-string v0, "\u041f\u043b\u0430\u0432\u043d\u043e \u0432\u0434\u0438\u0433\u0430\u043d\u0435 / \u0441\u0432\u0430\u043b\u044f\u043d\u0435"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:[I

    aget v3, v4, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " s"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    invoke-direct {p0, v0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v3, 0xc

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    return-void

    .line 263
    :cond_17d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_10b

    .line 266
    :cond_198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_132
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 46
    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtAus;->byId(Ljava/lang/String;)Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move-result-object v0

    .line 47
    if-eqz p0, :cond_8

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 50
    :goto_9
    return v0

    .line 48
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V

    .line 49
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/bodytech/BtAus$T;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->show()V

    .line 50
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private phaseCard(IZ)Landroid/view/View;
    .registers 13

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x41400000    # 12.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x41000000    # 8.0f

    const/4 v7, 0x1

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v1

    .line 205
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-virtual {v2, v0, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 207
    if-eqz p2, :cond_c5

    .line 208
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v3, 0x26

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    .line 207
    :goto_4e
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ". "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v4, 0x41500000    # 13.0f

    if-eqz p2, :cond_de

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_74
    invoke-static {v3, v1, v4, v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 211
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 212
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 213
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    aget v3, v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043c\u0438\u043d \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->kindOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41380000    # 11.5f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v0, v1, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 216
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 217
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 218
    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 219
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    invoke-direct {v0, p0, v9, p1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    return-object v2

    .line 209
    :cond_c5
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    invoke-static {v0, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v0

    goto/16 :goto_4e

    .line 210
    :cond_de
    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto :goto_74
.end method

.method private running()V
    .registers 15

    .prologue
    const/4 v13, -0x2

    const/high16 v10, 0x40800000    # 4.0f

    const/16 v12, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 307
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_199

    move v0, v1

    .line 308
    :goto_f
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 309
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 311
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 312
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 313
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x42800000    # 64.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    .line 314
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 315
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 316
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v5, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    .line 317
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 318
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v2, v13, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 322
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 323
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41700000    # 15.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvStage:Landroid/widget/TextView;

    .line 324
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvStage:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 325
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvStage:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 326
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41f00000    # 30.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    .line 327
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 328
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 329
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v5, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    .line 330
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 331
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 332
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 333
    const/high16 v5, 0x40a00000    # 5.0f

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 335
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 336
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "\u041d\u0438\u0432\u043e \u043d\u0430 \u0442\u043e\u043a\u0430"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 337
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/4 v7, 0x0

    const/high16 v8, 0x41e00000    # 28.0f

    new-instance v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;

    invoke-direct {v9, p0, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;I)V

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 338
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 339
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v10, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 340
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 343
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    .line 344
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 345
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    .line 346
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 347
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 348
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 349
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 352
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v3, v2

    .line 353
    :goto_186
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1ef

    .line 354
    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v5

    .line 355
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_19c

    .line 353
    :goto_196
    add-int/lit8 v3, v3, 0x1

    goto :goto_186

    :cond_199
    move v0, v2

    .line 307
    goto/16 :goto_f

    .line 356
    :cond_19c
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 357
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 358
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41500000    # 13.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v7, v8, v9, v10, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 359
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 360
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 361
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 362
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v9, "0 %"

    const/high16 v10, 0x41b00000    # 22.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v8, v9, v10, v11, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v7, v5

    .line 363
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 364
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v5, v7, v5

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 365
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v13, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 366
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 367
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_196

    .line 369
    :cond_1ef
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    if-eqz v0, :cond_288

    const-string v3, "\u041a\u044a\u043c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430"

    :goto_204
    const/4 v5, 0x2

    invoke-static {v4, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v3

    .line 372
    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v5, 0x8

    invoke-direct {v4, p0, v5, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 373
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 374
    if-nez v0, :cond_25d

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-le v3, v1, :cond_25d

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    if-ltz v1, :cond_25d

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_25d

    .line 375
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v3, "\u23ed \u0421\u043b\u0435\u0434\u0432\u0430\u0449\u0430 \u0444\u0430\u0437\u0430"

    const/4 v4, 0x3

    invoke-static {v1, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 376
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v4, 0xb

    invoke-direct {v3, p0, v4, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v13, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 379
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 380
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 382
    :cond_25d
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 383
    if-eqz v0, :cond_28c

    .line 384
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u21bb \u041e\u0449\u0435 \u0432\u0435\u0434\u043d\u044a\u0436"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 385
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    :goto_284
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->live()V

    .line 397
    return-void

    .line 371
    :cond_288
    const-string v3, "\u25a0 \u0421\u0442\u043e\u043f"

    goto/16 :goto_204

    .line 387
    :cond_28c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2ac

    .line 388
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u25b6 \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 389
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_284

    .line 392
    :cond_2ac
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u275a\u275a \u041f\u0430\u0443\u0437\u0430"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 393
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x7

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_284
.end method

.method private setup()V
    .registers 13

    .prologue
    .line 98
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 99
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtAusRun;->sel:I

    .line 100
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v3

    .line 101
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 102
    const/16 v1, 0x30

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 105
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 106
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "\u0426\u0435\u043b"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v6, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    const/high16 v7, 0x41600000    # 14.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-boolean v5, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->advanced:Z

    if-eqz v5, :cond_5c

    .line 109
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "\u0421\u0430\u043c\u043e \u0441\u043b\u0435\u0434 \u043d\u044f\u043a\u043e\u043b\u043a\u043e \u043f\u043e-\u043b\u0435\u043a\u0438 \u0441\u0435\u0430\u043d\u0441\u0430 (\u0430\u0434\u0430\u043f\u0442\u0430\u0446\u0438\u044f)."

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    const/4 v9, 0x1

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    .line 110
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x41000000    # 8.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 111
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 113
    :cond_5c
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "\u041a\u0430\u043a"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    .line 114
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 115
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 116
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v6, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->how:Ljava/lang/String;

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 117
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "\u041a\u0443\u0440\u0441"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    .line 118
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x41400000    # 12.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 119
    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 120
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->course:Ljava/lang/String;

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x0

    invoke-static {v5, v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 121
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x40800000    # 4.0f

    invoke-direct {v0, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 125
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u043e\u043d\u0438 (\u043a\u0430\u043d\u0430\u043b\u0438)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 126
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/LinearLayout;

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    .line 128
    const/4 v0, 0x0

    :goto_d5
    const/16 v7, 0x8

    if-ge v0, v7, :cond_103

    .line 129
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v7

    .line 130
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v7}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v10, v10, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v10, v10, v7

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v8

    .line 131
    new-instance v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v10, 0x1

    invoke-direct {v9, p0, v10, v7}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    aget-object v9, v1, v9

    invoke-static {v7, v9, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_d5

    .line 134
    :cond_103
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 136
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 137
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 138
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0424\u0430\u0437\u0438 \u00b7 \u043e\u0431\u0449\u043e "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v7}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v8

    const-wide/high16 v10, 0x404e000000000000L    # 60.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u043c\u0438\u043d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "i"

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v9, 0x24

    invoke-static {v1, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 141
    new-instance v6, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v7, 0x9

    const/4 v8, 0x0

    invoke-direct {v6, p0, v7, v8}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x42100000    # 36.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v9, 0x42100000    # 36.0f

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0xc

    invoke-static {v1, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    .line 144
    invoke-virtual {v5, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_1ce

    .line 146
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 147
    const/4 v0, 0x0

    :goto_19a
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-ge v0, v1, :cond_1c4

    .line 148
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 149
    if-lez v0, :cond_1b5

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v1, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 150
    :cond_1b5
    if-ne v0, v2, :cond_1c2

    const/4 v1, 0x1

    :goto_1b8
    invoke-direct {p0, v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->phaseCard(IZ)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v6, v1, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_19a

    .line 150
    :cond_1c2
    const/4 v1, 0x0

    goto :goto_1b8

    .line 152
    :cond_1c4
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    :cond_1ce
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    const/4 v7, 0x1

    if-le v0, v7, :cond_305

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->name:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1f1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->feel:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/high16 v6, 0x41600000    # 14.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v8, 0x1

    invoke-static {v1, v0, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 156
    const/4 v1, 0x0

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x41000000    # 8.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-virtual {v0, v1, v6, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 157
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 160
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 161
    const-string v0, "\u041d\u0438\u0432\u043e \u0432 \u043d\u0430\u0447\u0430\u043b\u043e\u0442\u043e"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v7, v7, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {p0, v0, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const-string v0, "\u0412\u0440\u0435\u043c\u0435"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v7, v7, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    aget v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u043c\u0438\u043d"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v0, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0xc

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-boolean v0, v3, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    if-nez v0, :cond_2a7

    .line 165
    const-string v3, "\u0422\u043e\u043a / \u043f\u043e\u0447\u0438\u0432\u043a\u0430"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v0, v0, v2

    if-nez v0, :cond_309

    const-string v0, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    :goto_294
    const/4 v6, 0x3

    invoke-direct {p0, v3, v0, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const v3, 0x3f99999a    # 1.2f

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    .line 166
    invoke-static {v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    .line 165
    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_2a7
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v3, 0x8

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    const/4 v0, 0x1

    new-array v3, v0, [Landroid/widget/LinearLayout;

    .line 170
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    .line 171
    const/4 v0, 0x0

    :goto_2bc
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_336

    .line 172
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    aget v8, v8, v0

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ""

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    aget v1, v1, v0

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v9, v9, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    aget v9, v9, v2

    if-ne v1, v9, :cond_334

    const/4 v1, 0x1

    :goto_2e7
    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v7, v8, v1, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 173
    new-instance v7, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v8, 0x2

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    aget v9, v9, v0

    invoke-direct {v7, p0, v8, v9}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v8, 0x0

    aget-object v8, v3, v8

    invoke-static {v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_2bc

    .line 155
    :cond_305
    const-string v0, ""

    goto/16 :goto_1f1

    .line 165
    :cond_309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:[I

    aget v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " / "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:[I

    aget v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " s"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_294

    .line 172
    :cond_334
    const/4 v1, 0x0

    goto :goto_2e7

    .line 176
    :cond_336
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-eqz v0, :cond_3f6

    const-string v0, "\u25b4 \u041f\u043e-\u043c\u0430\u043b\u043a\u043e"

    :goto_348
    const/high16 v3, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x1

    invoke-static {v1, v0, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 179
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 180
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x3

    const/4 v6, 0x0

    invoke-direct {v1, p0, v3, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 182
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-eqz v0, :cond_37a

    invoke-direct {p0, v5}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->moreBox(Landroid/widget/LinearLayout;)V

    .line 183
    :cond_37a
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->summary(I)Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 184
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    const/high16 v0, 0x40e00000    # 7.0f

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 187
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u24d8 \u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 191
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->blocker()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    if-eqz v1, :cond_3fa

    move-object v0, v1

    :goto_3e1
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 197
    if-eqz v1, :cond_421

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 199
    :goto_3ee
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    return-void

    .line 178
    :cond_3f6
    const-string v0, "\u25be \u041e\u0449\u0435 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"

    goto/16 :goto_348

    .line 195
    :cond_3fa
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u25b6 \u041f\u0443\u0441\u043d\u0438 \u0442\u043e\u043a\u0430 \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v3}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v4

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u043c\u0438\u043d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3e1

    .line 198
    :cond_421
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3ee
.end method


# virtual methods
.method contra()V
    .registers 8

    .prologue
    .line 485
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const/4 v2, 0x0

    const/16 v3, 0x2bc

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 486
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v3, "\u041d\u0435 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430 \u043f\u0440\u0438: \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0434\u0435\u0444\u0438\u0431\u0440\u0438\u043b\u0430\u0442\u043e\u0440 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433 \u0438\u043c\u043f\u043b\u0430\u043d\u0442\u0438\u0440\u0430\u043d \u0443\u0440\u0435\u0434; \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442 (\u043a\u043e\u0440\u0435\u043c, \u043a\u0440\u044a\u0441\u0442); \u0430\u043a\u0442\u0438\u0432\u043d\u043e \u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435; \u043d\u0435\u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f; \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430, \u0442\u0435\u0436\u043a\u0438 \u0430\u0440\u0442\u0435\u0440\u0438\u0430\u043b\u043d\u0438 \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0438\u044f, \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u043a\u0440\u044a\u0432\u043e\u0438\u0437\u043b\u0438\u0432; \u0440\u0430\u043d\u0430, \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435 \u0438\u043b\u0438 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435.\n\n\u041f\u044a\u0440\u0432\u043e \u043f\u0440\u0438 \u043b\u0435\u043a\u0430\u0440: \u0434\u0438\u0430\u0431\u0435\u0442 \u0441 \u043d\u0435\u0432\u0440\u043e\u043f\u0430\u0442\u0438\u044f, \u0441\u044a\u0440\u0434\u0435\u0447\u043d\u0430 \u0431\u043e\u043b\u0435\u0441\u0442 \u0438\u043b\u0438 \u0430\u0440\u0438\u0442\u043c\u0438\u044f, \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f, \u043c\u0435\u0442\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u043b\u0430\u043d\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u0430\u043b\u0435\u0440\u0433\u0438\u044f \u043a\u044a\u043c \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438, \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0430 \u043a\u043e\u0436\u043d\u0430 \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442."

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 487
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 488
    return-void
.end method

.method info()V
    .registers 9

    .prologue
    const/high16 v7, 0x41600000    # 14.0f

    const/high16 v6, 0x41400000    # 12.0f

    const/4 v1, 0x0

    .line 457
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 458
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    const/16 v5, 0x2f8

    invoke-static {v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v2

    .line 459
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041a\u0430\u043a \u0441\u0435 \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->how:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v7, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 460
    iget-object v4, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u041a\u0443\u0440\u0441\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->course:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v4, v7, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    .line 462
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v3, v1, v4, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 463
    iget-object v4, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 464
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u0421\u044a\u0447\u0435\u0442\u0430\u043d\u0438\u0435\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->combine:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v3, v0, v7, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 465
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 466
    iget-object v3, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 467
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v0, "\u0424\u0430\u0437\u0438"

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move v0, v1

    .line 468
    :goto_95
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-ge v0, v4, :cond_eb

    .line 469
    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u00b7 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v5, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u043c\u0438\u043d \u00b7 "

    .line 470
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->kindOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u2014 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v5, v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v5

    iget-object v5, v5, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->feel:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    add-int/lit8 v0, v0, 0x1

    goto :goto_95

    .line 472
    :cond_eb
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v4, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 473
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 474
    iget-object v3, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 475
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v3, "\u0421\u0438\u043b\u0430\u0442\u0430 \u0435 \u043f\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435: \u0432\u0441\u044f\u043a\u0430 \u0444\u0430\u0437\u0430 \u0437\u0430\u043f\u043e\u0447\u0432\u0430 \u043d\u0438\u0441\u043a\u043e \u0438 \u043f\u043b\u0430\u0432\u043d\u043e \u2014 \u0432\u0434\u0438\u0433\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u0442\u0430\u043d\u0435 \u0442\u043e\u0432\u0430, \u043a\u043e\u0435\u0442\u043e \u043f\u0438\u0448\u0435 \u0437\u0430 \u0444\u0430\u0437\u0430\u0442\u0430. \u041f\u0440\u0438 4 kHz \u0437\u0430 \u0441\u044a\u0449\u043e\u0442\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435 \u0442\u0440\u044f\u0431\u0432\u0430 \u043f\u043e-\u0432\u0438\u0441\u043e\u043a\u043e \u043d\u0438\u0432\u043e. \u0421\u043f\u0440\u0438 \u043f\u0440\u0438 \u0431\u043e\u043b\u043a\u0430, \u043f\u0430\u0440\u0435\u043d\u0435, \u0441\u043f\u0430\u0437\u044a\u043c, \u0437\u0430\u043c\u0430\u0439\u0432\u0430\u043d\u0435, \u0433\u0430\u0434\u0435\u043d\u0435, \u0441\u044a\u0440\u0446\u0435\u0431\u0438\u0435\u043d\u0435. \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043d\u0435 \u0432\u0440\u044a\u0449\u0430 \u0442\u043e\u043a, \u0441\u044a\u043f\u0440\u043e\u0442\u0438\u0432\u043b\u0435\u043d\u0438\u0435 \u0438\u043b\u0438 \u0442\u0435\u043c\u043f\u0435\u0440\u0430\u0442\u0443\u0440\u0430 \u2014 \u0441\u043b\u0435\u0434\u0438 \u043a\u043e\u0436\u0430\u0442\u0430 \u0438 \u0447\u043e\u0432\u0435\u043a\u0430."

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v3, v6, v4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 479
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v0, v1, v3, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 480
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 481
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 482
    return-void
.end method

.method kindOf(I)Ljava/lang/String;
    .registers 10

    .prologue
    const/16 v3, 0x3e8

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    .line 225
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v0

    .line 226
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v1, v1, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    aget v1, v1, p1

    .line 227
    iget-boolean v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    if-eqz v0, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IFC "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-lt v1, v3, :cond_41

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, v1, 0x64

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_38
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    :goto_40
    return-object v0

    .line 227
    :cond_41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_38

    .line 228
    :cond_55
    if-lt v1, v3, :cond_ca

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit16 v0, v1, 0x3e8

    if-nez v0, :cond_af

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " kHz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 229
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v0, v0, p1

    if-lez v0, :cond_c7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aget v2, v2, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_40

    .line 228
    :cond_af
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, v1, 0x64

    int-to-double v4, v1

    div-double/2addr v4, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_75

    .line 229
    :cond_c7
    const-string v0, ""

    goto :goto_a6

    .line 230
    :cond_ca
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Hz"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_40
.end method

.method live()V
    .registers 15

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x2

    const-wide/16 v10, 0x0

    const/4 v3, 0x1

    .line 401
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 445
    :cond_9
    :goto_9
    return-void

    .line 402
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v4

    .line 403
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    sub-double v0, v4, v0

    invoke-static {v10, v11, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 404
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->clock(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u043e\u0442 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/high16 v6, 0x404e000000000000L    # 60.0

    div-double v6, v4, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " \u043c\u0438\u043d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    if-gez v0, :cond_15f

    const/4 v0, 0x0

    move v1, v0

    .line 407
    :goto_51
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v2

    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-le v0, v3, :cond_166

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    add-int/lit8 v0, v0, -0x1

    if-ge v1, v0, :cond_166

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " \u00b7 \u0441\u043b\u0435\u0434 \u0442\u043e\u0432\u0430 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v6

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->name:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 409
    :goto_86
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvStage:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v7, v7, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    if-le v7, v3, :cond_16a

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u0424\u0430\u0437\u0430 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v1, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u043e\u0442 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v8, v8, Lcom/isaigu/gymapp/bodytech/BtAusRun;->n:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v2, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->name:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 409
    invoke-virtual {v8}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->phaseLeft()D

    move-result-wide v8

    invoke-static {v8, v9}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->clock(D)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_d5
    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->feel:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 412
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    .line 413
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 415
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-ne v6, v13, :cond_16e

    .line 416
    const-string v0, "\u0413\u041e\u0422\u041e\u0412\u041e \u2713"

    .line 417
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvStage:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v7, v7, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-object v7, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 435
    :goto_f8
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 437
    cmpl-double v0, v4, v10

    if-lez v0, :cond_207

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-wide v8, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    div-double v4, v8, v4

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    double-to-float v0, v4

    move v2, v0

    .line 438
    :goto_114
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 439
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v2, v4, v2

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 440
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    move v0, v3

    .line 441
    :goto_132
    const/16 v2, 0x8

    if-gt v0, v2, :cond_20b

    .line 442
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_15c

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    aget v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " %"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 441
    :cond_15c
    add-int/lit8 v0, v0, 0x1

    goto :goto_132

    .line 406
    :cond_15f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    move v1, v0

    goto/16 :goto_51

    .line 408
    :cond_166
    const-string v0, ""

    goto/16 :goto_86

    .line 410
    :cond_16a
    iget-object v0, v2, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->name:Ljava/lang/String;

    goto/16 :goto_d5

    .line 418
    :cond_16e
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-ne v6, v12, :cond_179

    .line 419
    const-string v0, "\u041f\u0410\u0423\u0417\u0410"

    .line 420
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_f8

    .line 421
    :cond_179
    iget v6, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v6, v13, :cond_19c

    .line 422
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u041f\u041e\u0427\u0418\u0412\u041a\u0410 \u00b7 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 423
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_f8

    .line 424
    :cond_19c
    iget v6, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-nez v6, :cond_1bf

    .line 425
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0412\u0414\u0418\u0413\u0410\u041d\u0415 \u00b7 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 426
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_f8

    .line 427
    :cond_1bf
    iget v6, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v6, v12, :cond_1e2

    .line 428
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u0412\u0410\u041b\u042f\u041d\u0415 \u00b7 "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 429
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_f8

    .line 430
    :cond_1e2
    iget v6, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v6, v3, :cond_203

    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u0422\u041e\u041a \u00b7 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " s"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_f8

    .line 433
    :cond_203
    const-string v0, "\u0422\u041e\u041a\u042a\u0422 \u0422\u0415\u0427\u0415"

    goto/16 :goto_f8

    .line 437
    :cond_207
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_114

    .line 444
    :cond_20b
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " %"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9
.end method

.method refresh()V
    .registers 3

    .prologue
    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shownCur:I

    if-eq v0, v1, :cond_14

    .line 77
    :cond_10
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 81
    :cond_13
    :goto_13
    return-void

    .line 80
    :cond_14
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_22

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    :cond_22
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->live()V

    goto :goto_13
.end method

.method render()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->cur:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shownCur:I

    .line 86
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 87
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 88
    :goto_1c
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_29

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1c

    .line 89
    :cond_29
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    if-eqz v0, :cond_41

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 93
    :cond_41
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-nez v0, :cond_4b

    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->setup()V

    .line 95
    :goto_4a
    return-void

    .line 94
    :cond_4b
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->running()V

    goto :goto_4a
.end method

.method show()V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 69
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 70
    return-void
.end method

.method summary(I)Ljava/lang/String;
    .registers 14

    .prologue
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 282
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0, p1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->ph(I)Lcom/isaigu/gymapp/bodytech/BtAus$Ph;

    move-result-object v1

    .line 283
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:[I

    aget v2, v0, p1

    .line 284
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v0, v0, p1

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:[I

    aget v3, v3, p1

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/bodytech/BtAus;->burst(II)[I

    move-result-object v0

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Hz \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->us:I

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->widthFor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b5s \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 286
    aget v4, v0, v8

    if-nez v4, :cond_c5

    const-string v0, "\u0431\u0435\u0437 \u043f\u0430\u043a\u0435\u0442\u0438"

    .line 287
    :goto_45
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    aget v4, v4, p1

    add-int/lit8 v4, v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 289
    iget-boolean v3, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->ifc:Z

    if-eqz v3, :cond_c4

    .line 290
    iget v0, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatHi:I

    iget v3, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    if-le v0, v3, :cond_11a

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Hz \u00b7 \u0441\u043c\u0435\u0441\u0432\u0430\u043d\u0435 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\u2013"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatHi:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " Hz \u0437\u0430 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->sweepS:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s \u00b7 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->us:I

    .line 292
    invoke-static {v2, v1}, Lcom/isaigu/gymapp/bodytech/BtAus;->widthFor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_c4
    :goto_c4
    return-object v0

    .line 287
    :cond_c5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u043f\u0430\u043a\u0435\u0442\u0438 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v9

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ms ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v5, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:[I

    aget v5, v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v8

    int-to-float v5, v5

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v5, v6

    aget v6, v0, v8

    aget v0, v0, v9

    add-int/2addr v0, v6

    int-to-float v0, v0

    div-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " %)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_45

    .line 294
    :cond_11a
    iget v0, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->beatLo:I

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcPair(II)[I

    move-result-object v0

    .line 295
    aget v2, v0, v9

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v2

    aget v4, v0, v8

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 296
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget v5, v0, v8

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz \u0438 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v0, v9

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Hz \u00b7 \u0441\u043c\u0435\u0441\u0432\u0430\u043d\u0435 \u2248 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-double/2addr v2, v10

    .line 297
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v10

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v0, v0, v8

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$Ph;->us:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAus;->widthFor(II)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:[I

    aget v2, v2, p1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c4
.end method
