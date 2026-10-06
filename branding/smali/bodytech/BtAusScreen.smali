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

.field tvFeel:Landroid/widget/TextView;

.field tvLeft:Landroid/widget/TextView;

.field tvPhase:Landroid/widget/TextView;

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
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    .line 40
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    .line 53
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    .line 54
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->mac:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 56
    if-eqz p2, :cond_9f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_9f

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 57
    :goto_28
    if-eqz p4, :cond_a3

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a3

    .line 58
    :goto_30
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_59

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_a6

    const-string v0, " \u00b7 "

    :goto_47
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u043a\u043e\u0441\u0442\u044e\u043c \u2026"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 59
    :cond_59
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

    if-lez v1, :cond_a9

    :goto_74
    const/16 v1, 0x424

    invoke-static {p1, v0, p4, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 60
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;)V

    invoke-direct {v0, p2, v1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 61
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0, p3}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->load(Lcom/isaigu/gymapp/bodytech/BtAus$T;)V

    .line 62
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusRun;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 63
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 64
    return-void

    .line 56
    :cond_9f
    const-string v0, ""

    move-object v1, v0

    goto :goto_28

    .line 57
    :cond_a3
    const-string p4, ""

    goto :goto_30

    .line 58
    :cond_a6
    const-string v0, ""

    goto :goto_47

    .line 59
    :cond_a9
    const/4 p4, 0x0

    goto :goto_74
.end method

.method static clock(D)Ljava/lang/String;
    .registers 6

    .prologue
    .line 377
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 378
    div-int/lit8 v1, v0, 0x3c

    .line 379
    rem-int/lit8 v2, v0, 0x3c

    .line 380
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
    .line 224
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 226
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;

    invoke-direct {v4, p0, p3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;I)V

    invoke-static {v1, p2, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 227
    return-object v0
.end method

.method private moreBox(Landroid/widget/LinearLayout;)V
    .registers 16

    .prologue
    const/4 v13, -0x2

    const/4 v12, 0x4

    const/4 v4, 0x1

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 189
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 190
    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 191
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v2, "\u041f\u0430\u043a\u0435\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    new-array v7, v4, [Landroid/widget/LinearLayout;

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v8

    move v0, v1

    .line 195
    :goto_2b
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7b

    .line 196
    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v2, v2, v0

    if-nez v2, :cond_61

    const-string v2, "\u0431\u0435\u0437"

    :goto_3a
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    sget-object v10, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v10, v10, v0

    if-ne v3, v10, :cond_79

    move v3, v4

    :goto_45
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v9, v2, v3, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v2

    .line 198
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v9, v9, v0

    invoke-direct {v3, p0, v12, v9}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    aget-object v9, v7, v1

    invoke-static {v3, v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 195
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 196
    :cond_61
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_3a

    :cond_79
    move v3, v1

    goto :goto_45

    .line 201
    :cond_7b
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 202
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 203
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 204
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v2, "\u0424\u043e\u0440\u043c\u0430"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-array v6, v4, [Landroid/widget/LinearLayout;

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    move v2, v1

    .line 207
    :goto_a0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_ce

    .line 208
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    sget-object v0, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    aget-object v9, v0, v9

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:I

    if-ne v0, v2, :cond_cc

    move v0, v4

    :goto_b2
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v9, v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v0

    .line 209
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v9, 0x5

    invoke-direct {v8, p0, v9, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    aget-object v9, v6, v1

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 207
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a0

    :cond_cc
    move v0, v1

    .line 208
    goto :goto_b2

    .line 212
    :cond_ce
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 213
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v11, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 214
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 216
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 217
    const-string v3, "\u0414\u044a\u043b\u0436\u0438\u043d\u0430 \u043d\u0430 \u043f\u0430\u043a\u0435\u0442\u0430"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    if-nez v0, :cond_13b

    const-string v0, "\u2014"

    :goto_fa
    invoke-direct {p0, v3, v0, v12}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    const-string v0, "\u041f\u043b\u0430\u0432\u043d\u043e \u0432\u0434\u0438\u0433\u0430\u043d\u0435 / \u0441\u0432\u0430\u043b\u044f\u043d\u0435"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->rampS:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " s"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x5

    invoke-direct {p0, v0, v1, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xc

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v11, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void

    .line 217
    :cond_13b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " ms"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_fa
.end method

.method public static open(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 45
    invoke-static {p2}, Lcom/isaigu/gymapp/bodytech/BtAus;->byId(Ljava/lang/String;)Lcom/isaigu/gymapp/bodytech/BtAus$T;

    move-result-object v0

    .line 46
    if-eqz p0, :cond_8

    if-nez v0, :cond_a

    :cond_8
    const/4 v0, 0x0

    .line 49
    :goto_9
    return v0

    .line 47
    :cond_a
    invoke-static {p0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->load(Landroid/content/Context;)V

    .line 48
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;

    invoke-direct {v1, p0, p1, v0, p3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;-><init>(Landroid/app/Activity;Ljava/lang/String;Lcom/isaigu/gymapp/bodytech/BtAus$T;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->show()V

    .line 49
    const/4 v0, 0x1

    goto :goto_9
.end method

.method private running()V
    .registers 14

    .prologue
    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/16 v12, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 254
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_196

    move v0, v1

    .line 255
    :goto_10
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 256
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 258
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 259
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 260
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x42800000    # 64.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    .line 261
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 262
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 263
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v5, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    .line 264
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 269
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 270
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41f00000    # 30.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    .line 271
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 272
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 273
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAus$T;->feel:Ljava/lang/String;

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v5, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    .line 274
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 275
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 276
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 277
    const/high16 v5, 0x40a00000    # 5.0f

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 280
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "\u041d\u0438\u0432\u043e \u043d\u0430 \u0442\u043e\u043a\u0430"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 281
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v7, v7, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " %"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/high16 v8, 0x41e00000    # 28.0f

    new-instance v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;

    invoke-direct {v9, p0, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;I)V

    invoke-static {v5, v6, v7, v8, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 282
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 283
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v10, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 286
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 287
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    .line 288
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 289
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    .line 290
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 291
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 292
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 293
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 296
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v3, v2

    .line 297
    :goto_183
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1ed

    .line 298
    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v5

    .line 299
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_199

    .line 297
    :goto_193
    add-int/lit8 v3, v3, 0x1

    goto :goto_183

    :cond_196
    move v0, v2

    .line 254
    goto/16 :goto_10

    .line 300
    :cond_199
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 301
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 302
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41500000    # 13.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v7, v8, v9, v10, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 303
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 304
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 305
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 306
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v9, "0 %"

    const/high16 v10, 0x41b00000    # 22.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v8, v9, v10, v11, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v7, v5

    .line 307
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 308
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v5, v7, v5

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 310
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 311
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_193

    .line 313
    :cond_1ed
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v5, 0x12

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 315
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    if-eqz v0, :cond_243

    const-string v1, "\u041a\u044a\u043c \u043d\u0430\u0441\u0442\u0440\u043e\u0439\u043a\u0430\u0442\u0430"

    :goto_202
    const/4 v4, 0x2

    invoke-static {v3, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 316
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 318
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 319
    if-eqz v0, :cond_246

    .line 320
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u21bb \u041e\u0449\u0435 \u0432\u0435\u0434\u043d\u044a\u0436"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 332
    :goto_23f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->live()V

    .line 333
    return-void

    .line 315
    :cond_243
    const-string v1, "\u25a0 \u0421\u0442\u043e\u043f"

    goto :goto_202

    .line 323
    :cond_246
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_266

    .line 324
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u25b6 \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 325
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_23f

    .line 328
    :cond_266
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u275a\u275a \u041f\u0430\u0443\u0437\u0430"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 329
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x7

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 330
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_23f
.end method

.method private setup()V
    .registers 12

    .prologue
    .line 96
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 98
    const/16 v0, 0x30

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 101
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v4, "\u0426\u0435\u043b"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v4, v2, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    const/high16 v5, 0x41600000    # 14.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x0

    invoke-static {v1, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 104
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v4, "\u041a\u0430\u043a"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 105
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 107
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v4, v2, Lcom/isaigu/gymapp/bodytech/BtAus$T;->how:Ljava/lang/String;

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {v1, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 108
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v4, "\u041a\u0443\u0440\u0441"

    invoke-static {v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    .line 109
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v4, v2, Lcom/isaigu/gymapp/bodytech/BtAus$T;->course:Ljava/lang/String;

    const/high16 v5, 0x41500000    # 13.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v7, 0x0

    invoke-static {v1, v4, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 112
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/high16 v6, 0x40800000    # 4.0f

    invoke-direct {v1, v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 116
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 117
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 118
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v5, "\u0423\u0441\u0435\u0449\u0430\u043d\u0435"

    const/high16 v6, 0x41500000    # 13.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v8, 0x1

    invoke-static {v1, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v5, "i"

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v8, 0x28

    invoke-static {v1, v5, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 121
    new-instance v5, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-direct {v5, p0, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 124
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v1, v2, Lcom/isaigu/gymapp/bodytech/BtAus$T;->feel:Ljava/lang/String;

    const/high16 v5, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v7, 0x1

    invoke-static {v0, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 125
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v1, v5, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 126
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u043e\u043d\u0438 (\u043a\u0430\u043d\u0430\u043b\u0438)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 129
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/LinearLayout;

    .line 130
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v5

    .line 131
    const/4 v0, 0x0

    :goto_126
    const/16 v6, 0x8

    if-ge v0, v6, :cond_154

    .line 132
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v6

    .line 133
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v9, v9, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v9, v9, v6

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 134
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v6, v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_126

    .line 137
    :cond_154
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 140
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 141
    const-string v1, "\u041d\u0438\u0432\u043e \u043d\u0430 \u0442\u043e\u043a\u0430"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " %"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v1, v5, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    const-string v1, "\u0412\u0440\u0435\u043c\u0435"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u043c\u0438\u043d"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {p0, v1, v5, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    const/high16 v5, 0x3f800000    # 1.0f

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v5, 0xc

    invoke-static {v1, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 146
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/widget/LinearLayout;

    .line 147
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    .line 148
    const/4 v0, 0x0

    :goto_1d9
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_222

    .line 149
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    aget v9, v9, v0

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ""

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    aget v1, v1, v0

    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v10, v10, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    if-ne v1, v10, :cond_220

    const/4 v1, 0x1

    :goto_202
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v9, v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 150
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v9, 0x2

    sget-object v10, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    aget v10, v10, v0

    invoke-direct {v8, p0, v9, v10}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 148
    add-int/lit8 v0, v0, 0x1

    goto :goto_1d9

    .line 149
    :cond_220
    const/4 v1, 0x0

    goto :goto_202

    .line 153
    :cond_222
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v6, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 154
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    iget-boolean v0, v2, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-nez v0, :cond_289

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 158
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 159
    const-string v2, "\u0422\u043e\u043a \u0442\u0435\u0447\u0435"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    if-nez v0, :cond_33f

    const-string v0, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    :goto_251
    const/4 v5, 0x2

    invoke-direct {p0, v2, v0, v5}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    const-string v2, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    if-nez v0, :cond_358

    const-string v0, "\u2014"

    :goto_26c
    const/4 v5, 0x3

    invoke-direct {p0, v2, v0, v5}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    :cond_289
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-eqz v0, :cond_371

    const-string v0, "\u25b4 \u041f\u043e-\u043c\u0430\u043b\u043a\u043e"

    :goto_291
    const/high16 v2, 0x41500000    # 13.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x1

    invoke-static {v1, v0, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 166
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v5, 0x41400000    # 12.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 167
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v2, 0x3

    const/4 v5, 0x0

    invoke-direct {v1, p0, v2, v5}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 169
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-eqz v0, :cond_2c3

    invoke-direct {p0, v4}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->moreBox(Landroid/widget/LinearLayout;)V

    .line 170
    :cond_2c3
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->summary()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41400000    # 12.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v6, 0x0

    invoke-static {v0, v1, v2, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 171
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v5, 0x40800000    # 4.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 172
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 173
    const/high16 v0, 0x40e00000    # 7.0f

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u24d8 \u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 181
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->blocker()Ljava/lang/String;

    move-result-object v1

    .line 182
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    if-eqz v1, :cond_375

    move-object v0, v1

    :goto_32a
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 183
    if-eqz v1, :cond_378

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 185
    :goto_337
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 186
    return-void

    .line 159
    :cond_33f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v5, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " s"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_251

    .line 161
    :cond_358
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v5, v5, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " s"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_26c

    .line 165
    :cond_371
    const-string v0, "\u25be \u041e\u0449\u0435 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"

    goto/16 :goto_291

    .line 182
    :cond_375
    const-string v0, "\u25b6 \u041f\u0443\u0441\u043d\u0438 \u0442\u043e\u043a\u0430"

    goto :goto_32a

    .line 184
    :cond_378
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_337
.end method


# virtual methods
.method contra()V
    .registers 8

    .prologue
    .line 405
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const/4 v2, 0x0

    const/16 v3, 0x2bc

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 406
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v3, "\u041d\u0435 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430 \u043f\u0440\u0438: \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0434\u0435\u0444\u0438\u0431\u0440\u0438\u043b\u0430\u0442\u043e\u0440 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433 \u0438\u043c\u043f\u043b\u0430\u043d\u0442\u0438\u0440\u0430\u043d \u0443\u0440\u0435\u0434; \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442 (\u043a\u043e\u0440\u0435\u043c, \u043a\u0440\u044a\u0441\u0442); \u0430\u043a\u0442\u0438\u0432\u043d\u043e \u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435; \u043d\u0435\u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f; \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430, \u0442\u0435\u0436\u043a\u0438 \u0430\u0440\u0442\u0435\u0440\u0438\u0430\u043b\u043d\u0438 \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0438\u044f, \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u043a\u0440\u044a\u0432\u043e\u0438\u0437\u043b\u0438\u0432; \u0440\u0430\u043d\u0430, \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435 \u0438\u043b\u0438 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435.\n\n\u041f\u044a\u0440\u0432\u043e \u043f\u0440\u0438 \u043b\u0435\u043a\u0430\u0440: \u0434\u0438\u0430\u0431\u0435\u0442 \u0441 \u043d\u0435\u0432\u0440\u043e\u043f\u0430\u0442\u0438\u044f, \u0441\u044a\u0440\u0434\u0435\u0447\u043d\u0430 \u0431\u043e\u043b\u0435\u0441\u0442 \u0438\u043b\u0438 \u0430\u0440\u0438\u0442\u043c\u0438\u044f, \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f, \u043c\u0435\u0442\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u043b\u0430\u043d\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u0430\u043b\u0435\u0440\u0433\u0438\u044f \u043a\u044a\u043c \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438, \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0430 \u043a\u043e\u0436\u043d\u0430 \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442."

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 407
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 408
    return-void
.end method

.method info()V
    .registers 9

    .prologue
    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    .line 386
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 387
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    const/16 v4, 0x2f8

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v1

    .line 388
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041a\u0430\u043a \u0441\u0435 \u043f\u0440\u043e\u0432\u0435\u0436\u0434\u0430\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->how:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v6, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 389
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 390
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u041a\u0443\u0440\u0441\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->course:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v3, v6, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 391
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 392
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u0421\u044a\u0447\u0435\u0442\u0430\u043d\u0438\u0435\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->combine:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v2, v0, v6, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 394
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 395
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v2, "\u0421\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0442\u043e\u043a\u0430 \u0435 \u043f\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435: \u0437\u0430\u043f\u043e\u0447\u043d\u0438 \u043d\u0438\u0441\u043a\u043e \u0438 \u0432\u0434\u0438\u0433\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u0442\u0430\u043d\u0435 \u0442\u043e\u0432\u0430, \u043a\u043e\u0435\u0442\u043e \u043f\u0438\u0448\u0435 \u043f\u043e\u0434 \u201e\u0423\u0441\u0435\u0449\u0430\u043d\u0435\u201c. \u0415\u0444\u0435\u043a\u0442\u044a\u0442 \u0432\u044a\u0440\u0445\u0443 \u0442\u044f\u043b\u043e\u0442\u043e \u043f\u0440\u0438 \u0442\u043e\u0437\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u043d\u0435 \u0435 \u0438\u0437\u043c\u0435\u0440\u0435\u043d \u2014 \u043a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043d\u0435 \u0432\u0440\u044a\u0449\u0430 \u043e\u0431\u0440\u0430\u0442\u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430."

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v7, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 399
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 400
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 401
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 402
    return-void
.end method

.method live()V
    .registers 11

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    .line 337
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 374
    :cond_9
    :goto_9
    return-void

    .line 338
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v4

    .line 339
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    sub-double v0, v4, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 340
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->clock(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u043e\u0442 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043c\u0438\u043d"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    .line 343
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 345
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-ne v3, v7, :cond_ba

    .line 346
    const-string v0, "\u0413\u041e\u0422\u041e\u0412\u041e \u2713"

    .line 364
    :goto_53
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 365
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 366
    cmpl-double v0, v4, v8

    if-lez v0, :cond_153

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-wide v6, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    div-double v4, v6, v4

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-float v0, v0

    move v1, v0

    .line 367
    :goto_6f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 369
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    move v0, v2

    .line 370
    :goto_8d
    const/16 v1, 0x8

    if-gt v0, v1, :cond_157

    .line 371
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_b7

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pcts:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 370
    :cond_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 347
    :cond_ba
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-ne v3, v6, :cond_c5

    .line 348
    const-string v0, "\u041f\u0410\u0423\u0417\u0410"

    .line 349
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_53

    .line 350
    :cond_c5
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v3, v7, :cond_e8

    .line 351
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041f\u041e\u0427\u0418\u0412\u041a\u0410 \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_53

    .line 353
    :cond_e8
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-nez v3, :cond_10b

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0412\u0414\u0418\u0413\u0410\u041d\u0415 \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_53

    .line 356
    :cond_10b
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v3, v6, :cond_12e

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u0421\u0412\u0410\u041b\u042f\u041d\u0415 \u00b7 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 358
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_53

    .line 359
    :cond_12e
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v3, v2, :cond_14f

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0422\u041e\u041a \u00b7 "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->left:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " s"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_53

    .line 362
    :cond_14f
    const-string v0, "\u0422\u041e\u041a\u042a\u0422 \u0422\u0415\u0427\u0415"

    goto/16 :goto_53

    .line 366
    :cond_153
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_6f

    .line 373
    :cond_157
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 75
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    if-eq v0, v1, :cond_c

    .line 76
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 80
    :cond_b
    :goto_b
    return-void

    .line 79
    :cond_c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    :cond_1a
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->live()V

    goto :goto_b
.end method

.method render()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 83
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 86
    :goto_16
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_23

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 87
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 88
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 91
    :cond_3b
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-nez v0, :cond_45

    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->setup()V

    .line 93
    :goto_44
    return-void

    .line 92
    :cond_45
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->running()V

    goto :goto_44
.end method

.method show()V
    .registers 4

    .prologue
    .line 67
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 68
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 69
    return-void
.end method

.method summary()Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 232
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 233
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->burst(II)[I

    move-result-object v0

    .line 234
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Hz \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    iget v4, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->us:I

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->widthFor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " \u00b5s \u00b7 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 235
    aget v3, v0, v8

    if-nez v3, :cond_9f

    const-string v0, "\u0431\u0435\u0437 \u043f\u0430\u043a\u0435\u0442\u0438"

    :goto_41
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:I

    add-int/lit8 v3, v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-boolean v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-eqz v2, :cond_9e

    .line 238
    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatHi:I

    iget v3, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    if-le v2, v3, :cond_d6

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " \u00b7 \u0441\u043c\u0435\u0441\u0432\u0430\u043d\u0435 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u2013"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatHi:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " Hz \u0437\u0430 "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->sweepS:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_9e
    :goto_9e
    return-object v0

    .line 235
    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u043f\u0430\u043a\u0435\u0442\u0438 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v0, v0, v9

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ms ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_41

    .line 241
    :cond_d6
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcPair(II)[I

    move-result-object v0

    .line 242
    aget v2, v0, v9

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v2

    aget v4, v0, v8

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 243
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

    .line 244
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

    iget v1, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->us:I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAus;->widthFor(II)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u00b5s \u00b7 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtSettings;->WAVES:[Ljava/lang/String;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->wave:I

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9e
.end method
