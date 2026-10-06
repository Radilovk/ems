.class final Lcom/isaigu/gymapp/bodytech/BtAusScreen;
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
    .line 21
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_12

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    .line 22
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_24

    sput-object v0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    return-void

    .line 21
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

    .line 22
    :array_24
    .array-data 4
        0x0
        0xa
        0x32
        0x64
    .end array-data
.end method

.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    .line 39
    const/16 v0, 0x9

    new-array v0, v0, [Landroid/widget/TextView;

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    .line 43
    iput-object p1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    .line 44
    iput-object p2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->mac:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->init(Landroid/content/Context;)V

    .line 46
    if-eqz p2, :cond_72

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_72

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x8

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 47
    :goto_27
    const-string v1, "\u0410\u0432\u0441\u0442\u0440\u0430\u043b\u0438\u0439\u0441\u043a\u0438 \u0442\u043e\u043a"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_75

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u041a\u043e\u0441\u0442\u044e\u043c \u2026"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_42
    const/16 v2, 0x424

    invoke-static {p1, v1, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 48
    new-instance v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Refresh;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;)V

    invoke-direct {v0, p2, v1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    .line 49
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->load(Lcom/isaigu/gymapp/bodytech/BtAus$T;)V

    .line 50
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stop;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusRun;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 51
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 52
    return-void

    .line 46
    :cond_72
    const-string v0, ""

    goto :goto_27

    .line 47
    :cond_75
    const/4 v0, 0x0

    goto :goto_42
.end method

.method static clock(D)Ljava/lang/String;
    .registers 6

    .prologue
    .line 380
    invoke-static {p0, p1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 381
    div-int/lit8 v1, v0, 0x3c

    .line 382
    rem-int/lit8 v2, v0, 0x3c

    .line 383
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
    .line 227
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 228
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v2, 0x0

    const/high16 v3, 0x41900000    # 18.0f

    new-instance v4, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;

    invoke-direct {v4, p0, p3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Stp;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;I)V

    invoke-static {v1, p2, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->stepper(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;FLcom/isaigu/gymapp/widget/XemsUi$OnStep;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    move-result-object v1

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 230
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

    .line 192
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 193
    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 194
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 195
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v2, "\u041f\u0430\u043a\u0435\u0442\u0438 \u0432 \u0441\u0435\u043a\u0443\u043d\u0434\u0430"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 196
    new-array v7, v4, [Landroid/widget/LinearLayout;

    .line 197
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v8

    move v0, v1

    .line 198
    :goto_2b
    sget-object v2, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    array-length v2, v2

    if-ge v0, v2, :cond_7b

    .line 199
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

    .line 201
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    sget-object v9, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->BURST_HZ:[I

    aget v9, v9, v0

    invoke-direct {v3, p0, v12, v9}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 202
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    aget-object v9, v7, v1

    invoke-static {v3, v9, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 198
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 199
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

    .line 204
    :cond_7b
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 205
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v13, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 206
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 207
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v2, "\u0424\u043e\u0440\u043c\u0430"

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 208
    new-array v6, v4, [Landroid/widget/LinearLayout;

    .line 209
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    move v2, v1

    .line 210
    :goto_a0
    const/4 v0, 0x3

    if-ge v2, v0, :cond_ce

    .line 211
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

    .line 212
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v9, 0x5

    invoke-direct {v8, p0, v9, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    aget-object v9, v6, v1

    invoke-static {v8, v9, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 210
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_a0

    :cond_cc
    move v0, v1

    .line 211
    goto :goto_b2

    .line 215
    :cond_ce
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 216
    const/16 v0, 0xc

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v11, v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 219
    const/16 v0, 0x30

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 220
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

    .line 222
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

    .line 223
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    return-void

    .line 220
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

.method private running()V
    .registers 14

    .prologue
    const/high16 v11, 0x41000000    # 8.0f

    const/high16 v10, 0x40800000    # 4.0f

    const/16 v12, 0x11

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 257
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_196

    move v0, v1

    .line 258
    :goto_10
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 259
    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 261
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 262
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 263
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x42800000    # 64.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    .line 264
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 265
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 266
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v5, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    .line 267
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 268
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 269
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v2, v6, v10}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 271
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 272
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 273
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, ""

    const/high16 v7, 0x41f00000    # 30.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v5, v6, v7, v8, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    .line 274
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 275
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 276
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAus$T;->feel:Ljava/lang/String;

    const/high16 v7, 0x41500000    # 13.0f

    sget v8, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v5, v6, v7, v8, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v5

    iput-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    .line 277
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    invoke-virtual {v5, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 278
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 279
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvFeel:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 280
    const/high16 v5, 0x40a00000    # 5.0f

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 283
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v6, "\u041d\u0438\u0432\u043e \u043d\u0430 \u0442\u043e\u043a\u0430"

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 284
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

    .line 285
    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->lvl:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    iget-object v5, v5, Lcom/isaigu/gymapp/widget/XemsUi$Stepper;->view:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 286
    const/16 v5, 0xc

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v10, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 287
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 290
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    .line 291
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 292
    new-instance v4, Landroid/view/View;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    .line 293
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    invoke-static {v5, v6, v2, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 294
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/4 v7, 0x0

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 295
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v4, v4, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v5, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v6, 0x12

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 299
    invoke-virtual {v4, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    move v3, v2

    .line 300
    :goto_183
    const/16 v5, 0x8

    if-ge v3, v5, :cond_1ed

    .line 301
    invoke-static {v3}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v5

    .line 302
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_199

    .line 300
    :goto_193
    add-int/lit8 v3, v3, 0x1

    goto :goto_183

    :cond_196
    move v0, v2

    .line 257
    goto/16 :goto_10

    .line 303
    :cond_199
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->surface(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 304
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 305
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v5}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v8

    const/high16 v9, 0x41500000    # 13.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    invoke-static {v7, v8, v9, v10, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v7

    .line 306
    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 307
    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 308
    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 309
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v9, "0 %"

    const/high16 v10, 0x41b00000    # 22.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v8, v9, v10, v11, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    aput-object v8, v7, v5

    .line 310
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v7, v7, v5

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setGravity(I)V

    .line 311
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    aget-object v5, v7, v5

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 312
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v5, v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 313
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x40c00000    # 6.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 314
    invoke-virtual {v4, v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_193

    .line 316
    :cond_1ed
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v5, 0x12

    invoke-static {v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 318
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    if-eqz v0, :cond_243

    const-string v1, "\u041a\u044a\u043c \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0438\u0442\u0435"

    :goto_202
    const/4 v4, 0x2

    invoke-static {v3, v1, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 319
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v4, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 320
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v3, v3, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 321
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    if-eqz v0, :cond_246

    .line 323
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u21bb \u041e\u0449\u0435 \u0432\u0435\u0434\u043d\u044a\u0436"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 324
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 335
    :goto_23f
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->live()V

    .line 336
    return-void

    .line 318
    :cond_243
    const-string v1, "\u25a0 \u0421\u0442\u043e\u043f"

    goto :goto_202

    .line 326
    :cond_246
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_266

    .line 327
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u25b6 \u041f\u0440\u043e\u0434\u044a\u043b\u0436\u0438"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 328
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x6

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_23f

    .line 331
    :cond_266
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u275a\u275a \u041f\u0430\u0443\u0437\u0430"

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 332
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x7

    invoke-direct {v1, p0, v3, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_23f
.end method

.method private setup()V
    .registers 14

    .prologue
    .line 84
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v4, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 85
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v5

    .line 86
    const/16 v0, 0x30

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 89
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v6

    .line 90
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u043e\u0442\u043e\u043a\u043e\u043b"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 91
    const/4 v0, 0x0

    :goto_21
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    array-length v1, v1

    if-ge v0, v1, :cond_11b

    .line 92
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAus;->ALL:[Lcom/isaigu/gymapp/bodytech/BtAus$T;

    aget-object v7, v1, v0

    .line 93
    if-ne v7, v4, :cond_f3

    const/4 v1, 0x1

    .line 94
    :goto_2d
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 95
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v9, 0x41200000    # 10.0f

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v10, 0x41600000    # 14.0f

    invoke-static {v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v11, 0x41200000    # 10.0f

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v8, v2, v3, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 96
    if-eqz v1, :cond_f6

    .line 97
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v3, 0x26

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v2, v3, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    .line 96
    :goto_77
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v9

    .line 100
    const/16 v2, 0x10

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 101
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v10, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    const/high16 v11, 0x41700000    # 15.0f

    if-eqz v1, :cond_111

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    :goto_8f
    const/4 v12, 0x1

    invoke-static {v3, v10, v11, v2, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 102
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, 0x0

    const/4 v11, -0x2

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v3, v10, v11, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v9, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 103
    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget v2, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->kind:I

    if-nez v2, :cond_115

    const-string v2, "\u0430\u043a\u0442\u0438\u0432\u043d\u043e"

    .line 104
    :goto_a8
    iget v3, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->kind:I

    if-nez v3, :cond_118

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    .line 103
    :goto_ae
    invoke-static {v10, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->badge(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 105
    invoke-virtual {v8, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 106
    if-eqz v1, :cond_d8

    .line 107
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v2, v7, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    const/high16 v3, 0x41480000    # 12.5f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v9, 0x0

    invoke-static {v1, v2, v3, v7, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 108
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x40800000    # 4.0f

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v1, v2, v3, v7, v9}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 109
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 111
    :cond_d8
    invoke-static {v8}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 112
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v2, 0x8

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v6, v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_21

    .line 93
    :cond_f3
    const/4 v1, 0x0

    goto/16 :goto_2d

    .line 98
    :cond_f6
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v9, 0x41600000    # 14.0f

    invoke-static {v3, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    iget-object v10, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-static {v2, v3, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    goto/16 :goto_77

    .line 101
    :cond_111
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    goto/16 :goto_8f

    .line 103
    :cond_115
    const-string v2, "\u043f\u0430\u0441\u0438\u0432\u043d\u043e"

    goto :goto_a8

    .line 104
    :cond_118
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto :goto_ae

    .line 115
    :cond_11b
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v2, -0x2

    const/high16 v3, 0x40800000    # 4.0f

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v5, v6, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 119
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 120
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 121
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v3, v4, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    const/high16 v6, 0x41a80000    # 21.0f

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v8, 0x1

    invoke-static {v1, v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v3, "i"

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/16 v8, 0x28

    invoke-static {v1, v3, v6, v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->iconButton(Landroid/content/Context;Ljava/lang/String;III)Landroid/widget/TextView;

    move-result-object v1

    .line 124
    new-instance v3, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-direct {v3, p0, v6, v7}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x42200000    # 40.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x42200000    # 40.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-direct {v3, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 127
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v1, v4, Lcom/isaigu/gymapp/bodytech/BtAus$T;->feel:Ljava/lang/String;

    const/high16 v3, 0x41700000    # 15.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v7, 0x1

    invoke-static {v0, v1, v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v6, 0x40c00000    # 6.0f

    invoke-static {v3, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v8, 0x41200000    # 10.0f

    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v0, v1, v3, v6, v7}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 129
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 131
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u0417\u043e\u043d\u0438 (\u043a\u0430\u043d\u0430\u043b\u0438)"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 132
    const/4 v0, 0x1

    new-array v1, v0, [Landroid/widget/LinearLayout;

    .line 133
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v3

    .line 134
    const/4 v0, 0x0

    :goto_1bf
    const/16 v6, 0x8

    if-ge v0, v6, :cond_1ed

    .line 135
    invoke-static {v0}, Lcom/isaigu/gymapp/bodytech/BtSettings;->channelAt(I)I

    move-result v6

    .line 136
    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v6}, Lcom/isaigu/gymapp/bodytech/BtSettings;->name(I)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v9, v9, Lcom/isaigu/gymapp/bodytech/BtAusRun;->chans:[Z

    aget-boolean v9, v9, v6

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v7, v8, v9, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v7

    .line 137
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v9, 0x1

    invoke-direct {v8, p0, v9, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    invoke-static {v6, v8, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1bf

    .line 140
    :cond_1ed
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 143
    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    const-string v1, "\u041d\u0438\u0432\u043e \u043d\u0430 \u0442\u043e\u043a\u0430"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->level:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " %"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    invoke-direct {p0, v1, v3, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, 0x0

    const/4 v7, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 146
    const-string v1, "\u0412\u0440\u0435\u043c\u0435"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v6, v6, Lcom/isaigu/gymapp/bodytech/BtAusRun;->minutes:I

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " \u043c\u0438\u043d"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    invoke-direct {p0, v1, v3, v6}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v6, 0xc

    iget-object v7, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 148
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v3

    .line 149
    const/4 v0, 0x1

    new-array v6, v0, [Landroid/widget/LinearLayout;

    .line 150
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->chipRow(Landroid/content/Context;[Landroid/widget/LinearLayout;)Landroid/widget/HorizontalScrollView;

    move-result-object v7

    .line 151
    const/4 v0, 0x0

    :goto_272
    sget-object v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2bb

    .line 152
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

    if-ne v1, v10, :cond_2b9

    const/4 v1, 0x1

    :goto_29b
    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v8, v9, v1, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 153
    new-instance v8, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v9, 0x2

    sget-object v10, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->LEVELS:[I

    aget v10, v10, v0

    invoke-direct {v8, p0, v9, v10}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v8, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v9, 0x0

    aget-object v9, v6, v9

    invoke-static {v8, v9, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->addChip(Landroid/content/Context;Landroid/widget/LinearLayout;Landroid/view/View;)V

    .line 151
    add-int/lit8 v0, v0, 0x1

    goto :goto_272

    .line 152
    :cond_2b9
    const/4 v1, 0x0

    goto :goto_29b

    .line 156
    :cond_2bb
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    const/4 v6, -0x2

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v6, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v7, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/4 v1, 0x6

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 159
    iget-boolean v0, v4, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-nez v0, :cond_322

    .line 160
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v1

    .line 161
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 162
    const-string v3, "\u0422\u043e\u043a \u0442\u0435\u0447\u0435"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    if-nez v0, :cond_3d8

    const-string v0, "\u043d\u0435\u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430\u0442\u043e"

    :goto_2ea
    const/4 v4, 0x2

    invoke-direct {p0, v3, v0, v4}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, 0x0

    const/4 v6, -0x2

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-direct {v3, v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    const-string v3, "\u041f\u043e\u0447\u0438\u0432\u043a\u0430"

    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    if-nez v0, :cond_3f1

    const-string v0, "\u2014"

    :goto_305
    const/4 v4, 0x3

    invoke-direct {p0, v3, v0, v4}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->field(Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    const/16 v4, 0xc

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 165
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/16 v3, 0xc

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 168
    :cond_322
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-eqz v0, :cond_40a

    const-string v0, "\u25b4 \u041f\u043e-\u043c\u0430\u043b\u043a\u043e"

    :goto_32a
    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v6, 0x1

    invoke-static {v1, v0, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 169
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v4, 0x41400000    # 12.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v7, 0x40c00000    # 6.0f

    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 170
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 172
    iget-boolean v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->more:Z

    if-eqz v0, :cond_35c

    invoke-direct {p0, v2}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->moreBox(Landroid/widget/LinearLayout;)V

    .line 173
    :cond_35c
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->summary()Ljava/lang/String;

    move-result-object v1

    const/high16 v3, 0x41400000    # 12.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v6, 0x0

    invoke-static {v0, v1, v3, v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 174
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v3, v4, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 175
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 176
    const/high16 v0, 0x40e00000    # 7.0f

    const/16 v1, 0x12

    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u24d8 \u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 181
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/16 v2, 0xa

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 183
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 184
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->blocker()Ljava/lang/String;

    move-result-object v1

    .line 185
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    if-eqz v1, :cond_40e

    move-object v0, v1

    :goto_3c3
    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 186
    if-eqz v1, :cond_411

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 188
    :goto_3d0
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v1, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 189
    return-void

    .line 162
    :cond_3d8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->onS:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2ea

    .line 164
    :cond_3f1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v4, v4, Lcom/isaigu/gymapp/bodytech/BtAusRun;->offS:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_305

    .line 168
    :cond_40a
    const-string v0, "\u25be \u041e\u0449\u0435 \u043f\u0430\u0440\u0430\u043c\u0435\u0442\u0440\u0438"

    goto/16 :goto_32a

    .line 185
    :cond_40e
    const-string v0, "\u25b6 \u041f\u0443\u0441\u043d\u0438 \u0442\u043e\u043a\u0430"

    goto :goto_3c3

    .line 187
    :cond_411
    new-instance v1, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/isaigu/gymapp/bodytech/BtAusScreen$Do;-><init>(Lcom/isaigu/gymapp/bodytech/BtAusScreen;II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3d0
.end method


# virtual methods
.method contra()V
    .registers 8

    .prologue
    .line 408
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v1, "\u041f\u0440\u043e\u0442\u0438\u0432\u043e\u043f\u043e\u043a\u0430\u0437\u0430\u043d\u0438\u044f"

    const/4 v2, 0x0

    const/16 v3, 0x2bc

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 409
    iget-object v1, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v3, "\u041d\u0435 \u0441\u0435 \u043f\u0443\u0441\u043a\u0430 \u043f\u0440\u0438: \u043f\u0435\u0439\u0441\u043c\u0435\u0439\u043a\u044a\u0440, \u0434\u0435\u0444\u0438\u0431\u0440\u0438\u043b\u0430\u0442\u043e\u0440 \u0438\u043b\u0438 \u0434\u0440\u0443\u0433 \u0438\u043c\u043f\u043b\u0430\u043d\u0442\u0438\u0440\u0430\u043d \u0443\u0440\u0435\u0434; \u0431\u0440\u0435\u043c\u0435\u043d\u043d\u043e\u0441\u0442 (\u043a\u043e\u0440\u0435\u043c, \u043a\u0440\u044a\u0441\u0442); \u0430\u043a\u0442\u0438\u0432\u043d\u043e \u043e\u043d\u043a\u043e\u043b\u043e\u0433\u0438\u0447\u043d\u043e \u0437\u0430\u0431\u043e\u043b\u044f\u0432\u0430\u043d\u0435; \u043d\u0435\u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f; \u0442\u0440\u043e\u043c\u0431\u043e\u0437\u0430, \u0442\u0435\u0436\u043a\u0438 \u0430\u0440\u0442\u0435\u0440\u0438\u0430\u043b\u043d\u0438 \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0438\u044f, \u0430\u043a\u0442\u0438\u0432\u0435\u043d \u043a\u0440\u044a\u0432\u043e\u0438\u0437\u043b\u0438\u0432; \u0440\u0430\u043d\u0430, \u0432\u044a\u0437\u043f\u0430\u043b\u0435\u043d\u0438\u0435 \u0438\u043b\u0438 \u0438\u0437\u0433\u0430\u0440\u044f\u043d\u0435 \u043f\u043e\u0434 \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438\u0442\u0435.\n\n\u041f\u044a\u0440\u0432\u043e \u043f\u0440\u0438 \u043b\u0435\u043a\u0430\u0440: \u0434\u0438\u0430\u0431\u0435\u0442 \u0441 \u043d\u0435\u0432\u0440\u043e\u043f\u0430\u0442\u0438\u044f, \u0441\u044a\u0440\u0434\u0435\u0447\u043d\u0430 \u0431\u043e\u043b\u0435\u0441\u0442 \u0438\u043b\u0438 \u0430\u0440\u0438\u0442\u043c\u0438\u044f, \u0443\u043f\u0440\u0430\u0432\u043b\u044f\u0432\u0430\u043d\u0430 \u0435\u043f\u0438\u043b\u0435\u043f\u0441\u0438\u044f, \u043c\u0435\u0442\u0430\u043b\u0435\u043d \u0438\u043c\u043f\u043b\u0430\u043d\u0442 \u0432 \u0437\u043e\u043d\u0430\u0442\u0430, \u0430\u043b\u0435\u0440\u0433\u0438\u044f \u043a\u044a\u043c \u0435\u043b\u0435\u043a\u0442\u0440\u043e\u0434\u0438, \u043d\u0430\u0440\u0443\u0448\u0435\u043d\u0430 \u043a\u043e\u0436\u043d\u0430 \u0447\u0443\u0432\u0441\u0442\u0432\u0438\u0442\u0435\u043b\u043d\u043e\u0441\u0442."

    const/high16 v4, 0x41600000    # 14.0f

    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 410
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 411
    return-void
.end method

.method info()V
    .registers 9

    .prologue
    const/high16 v7, 0x41400000    # 12.0f

    const/high16 v6, 0x41600000    # 14.0f

    const/4 v5, 0x0

    .line 389
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 390
    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v2, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->name:Ljava/lang/String;

    iget-object v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$T;->goal:Ljava/lang/String;

    const/16 v4, 0x2f8

    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v1

    .line 391
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

    .line 392
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 393
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

    .line 394
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v3, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v2, v5, v3, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 395
    iget-object v3, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 396
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

    .line 397
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 398
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 399
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    const-string v2, "\u0421\u0438\u043b\u0430\u0442\u0430 \u043d\u0430 \u0442\u043e\u043a\u0430 \u0435 \u043f\u043e \u0443\u0441\u0435\u0449\u0430\u043d\u0435: \u0437\u0430\u043f\u043e\u0447\u043d\u0438 \u043d\u0438\u0441\u043a\u043e \u0438 \u0432\u0434\u0438\u0433\u0430\u0439, \u0434\u043e\u043a\u0430\u0442\u043e \u0441\u0442\u0430\u043d\u0435 \u0442\u043e\u0432\u0430, \u043a\u043e\u0435\u0442\u043e \u043f\u0438\u0448\u0435 \u043f\u043e\u0434 \u0438\u043c\u0435\u0442\u043e \u043d\u0430 \u043f\u0440\u043e\u0442\u043e\u043a\u043e\u043b\u0430. \u0415\u0444\u0435\u043a\u0442\u044a\u0442 \u0432\u044a\u0440\u0445\u0443 \u0442\u044f\u043b\u043e\u0442\u043e \u043f\u0440\u0438 \u0442\u043e\u0437\u0438 \u043a\u043e\u0441\u0442\u044e\u043c \u043d\u0435 \u0435 \u0438\u0437\u043c\u0435\u0440\u0435\u043d \u2014 \u043a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043d\u0435 \u0432\u0440\u044a\u0449\u0430 \u043e\u0431\u0440\u0430\u0442\u043d\u0430 \u0432\u0440\u044a\u0437\u043a\u0430."

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    invoke-static {v0, v2, v7, v3, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 402
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    invoke-static {v2, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v5, v2, v5, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 403
    iget-object v2, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 404
    iget-object v0, v1, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 405
    return-void
.end method

.method live()V
    .registers 11

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v2, 0x1

    const-wide/16 v8, 0x0

    .line 340
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    if-nez v0, :cond_a

    .line 377
    :cond_9
    :goto_9
    return-void

    .line 341
    :cond_a
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/bodytech/BtAusRun;->totalSec()D

    move-result-wide v4

    .line 342
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-wide v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->elapsed:D

    sub-double v0, v4, v0

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 343
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvTime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->clock(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
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

    .line 345
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->pos:Lcom/isaigu/gymapp/bodytech/BtAus$Pos;

    .line 346
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    .line 348
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-ne v3, v7, :cond_ba

    .line 349
    const-string v0, "\u0413\u041e\u0422\u041e\u0412\u041e \u2713"

    .line 367
    :goto_53
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->tvPhase:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 369
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

    .line 370
    :goto_6f
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 371
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barRest:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v1, v3, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 372
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->barFill:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    move v0, v2

    .line 373
    :goto_8d
    const/16 v1, 0x8

    if-gt v0, v1, :cond_157

    .line 374
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

    .line 373
    :cond_b7
    add-int/lit8 v0, v0, 0x1

    goto :goto_8d

    .line 350
    :cond_ba
    iget-object v3, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v3, v3, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-ne v3, v6, :cond_c5

    .line 351
    const-string v0, "\u041f\u0410\u0423\u0417\u0410"

    .line 352
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_53

    .line 353
    :cond_c5
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v3, v7, :cond_e8

    .line 354
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

    .line 355
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    goto/16 :goto_53

    .line 356
    :cond_e8
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-nez v3, :cond_10b

    .line 357
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

    .line 358
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_53

    .line 359
    :cond_10b
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v3, v6, :cond_12e

    .line 360
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

    .line 361
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto/16 :goto_53

    .line 362
    :cond_12e
    iget v3, v0, Lcom/isaigu/gymapp/bodytech/BtAus$Pos;->phase:I

    if-ne v3, v2, :cond_14f

    .line 363
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

    .line 365
    :cond_14f
    const-string v0, "\u0422\u041e\u041a\u042a\u0422 \u0422\u0415\u0427\u0415"

    goto/16 :goto_53

    .line 369
    :cond_153
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_6f

    .line 376
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
    .line 63
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    iget v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    if-eq v0, v1, :cond_c

    .line 64
    invoke-virtual {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->render()V

    .line 68
    :cond_b
    :goto_b
    return-void

    .line 67
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

    .line 71
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    iput v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->shown:I

    .line 72
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 73
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    move v0, v1

    .line 74
    :goto_16
    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    array-length v2, v2

    if-ge v0, v2, :cond_23

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->chTv:[Landroid/widget/TextView;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 75
    :cond_23
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    if-eqz v0, :cond_3b

    .line 76
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->error:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    :cond_3b
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->state:I

    if-nez v0, :cond_45

    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->setup()V

    .line 81
    :goto_44
    return-void

    .line 80
    :cond_45
    invoke-direct {p0}, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->running()V

    goto :goto_44
.end method

.method show()V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->sh:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    const v2, 0x3f70a3d7    # 0.94f

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 57
    return-void
.end method

.method summary()Ljava/lang/String;
    .registers 13

    .prologue
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 235
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget-object v1, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->t:Lcom/isaigu/gymapp/bodytech/BtAus$T;

    .line 236
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstHz:I

    iget-object v2, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v2, v2, Lcom/isaigu/gymapp/bodytech/BtAusRun;->burstMs:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->burst(II)[I

    move-result-object v0

    .line 237
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

    .line 238
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

    .line 240
    iget-boolean v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->ifc:Z

    if-eqz v2, :cond_9e

    .line 241
    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatHi:I

    iget v3, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    if-le v2, v3, :cond_d6

    .line 242
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

    .line 251
    :cond_9e
    :goto_9e
    return-object v0

    .line 238
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

    .line 244
    :cond_d6
    iget-object v0, p0, Lcom/isaigu/gymapp/bodytech/BtAusScreen;->run:Lcom/isaigu/gymapp/bodytech/BtAusRun;

    iget v0, v0, Lcom/isaigu/gymapp/bodytech/BtAusRun;->carrier:I

    iget v2, v1, Lcom/isaigu/gymapp/bodytech/BtAus$T;->beatLo:I

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->ifcPair(II)[I

    move-result-object v0

    .line 245
    aget v2, v0, v9

    invoke-static {v2}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v2

    aget v4, v0, v8

    invoke-static {v4}, Lcom/isaigu/gymapp/bodytech/BtAus;->realHz(I)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 246
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

    .line 247
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
