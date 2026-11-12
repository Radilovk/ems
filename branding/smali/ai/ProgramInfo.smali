.class public final Lcom/isaigu/gymapp/ai/ProgramInfo;
.super Ljava/lang/Object;
.source "ProgramInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/ProgramInfo$Tap;,
        Lcom/isaigu/gymapp/ai/ProgramInfo$Close;,
        Lcom/isaigu/gymapp/ai/ProgramInfo$Forget;
    }
.end annotation


# static fields
.field private static bar:Landroid/widget/LinearLayout;

.field private static capName:Landroid/widget/TextView;

.field private static capText:Landroid/widget/TextView;

.field private static colors:[I

.field private static shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/isaigu/gymapp/ai/ProgramInfo;->capName:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$202(Landroid/widget/TextView;)Landroid/widget/TextView;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/isaigu/gymapp/ai/ProgramInfo;->capText:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$302(Lcom/isaigu/gymapp/ai/AutoModel$Plan;)Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 1

    .prologue
    .line 26
    sput-object p0, Lcom/isaigu/gymapp/ai/ProgramInfo;->shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    return-object p0
.end method

.method private static fact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;
    .registers 12

    .prologue
    const/high16 v6, 0x41600000    # 14.0f

    const/high16 v4, 0x41200000    # 10.0f

    const/high16 v5, 0x41400000    # 12.0f

    .line 188
    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 189
    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-static {p0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 190
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const v2, 0x3df5c28f    # 0.12f

    invoke-static {v1, p4, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v1

    invoke-static {p0, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x66

    .line 191
    invoke-static {p4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {p0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 190
    invoke-static {v1, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v3, 0x0

    invoke-static {p0, v1, v5, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 193
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v2, 0x1

    invoke-static {p0, p3, v6, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 194
    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 195
    return-object v0
.end method

.method static firstMain(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 149
    move v1, v2

    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_29

    .line 150
    const-string v3, "WARMUP"

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v0

    if-nez v0, :cond_25

    .line 154
    :goto_24
    return v1

    .line 149
    :cond_25
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_29
    move v1, v2

    .line 154
    goto :goto_24
.end method

.method public static has(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z
    .registers 2

    .prologue
    .line 38
    if-eqz p0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v0}, Lcom/isaigu/gymapp/ai/ProgramGuide;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static open(Landroid/app/Activity;Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;Ljava/lang/String;ILjava/lang/String;I)V
    .registers 23

    .prologue
    .line 44
    :try_start_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->id:Ljava/lang/String;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ProgramGuide;->get(Ljava/lang/String;)Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;

    move-result-object v5

    .line 45
    if-eqz p0, :cond_e

    if-eqz v5, :cond_e

    if-nez p2, :cond_f

    .line 136
    :cond_e
    :goto_e
    return-void

    .line 48
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->isActive()Z

    move-result v2

    if-eqz v2, :cond_105

    const-string v2, "\u0410\u043a\u0442\u0438\u0432\u043d\u0430 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v3, "Active training"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 50
    :goto_1e
    invoke-static/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AutoCatalog;->isFace(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;)Z

    move-result v2

    if-eqz v2, :cond_110

    const-string v2, "\u041b\u0438\u0446\u0435 \u00b7 \u0435\u0441\u0442\u0435\u0442\u0438\u0447\u043d\u0438 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0438"

    const-string v4, "Face \u00b7 aesthetic procedures"

    invoke-static {v2, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 51
    :goto_2c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v6

    .line 52
    iget-object v2, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    move-object/from16 v0, p5

    move/from16 v1, p6

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->setBadge(Landroid/widget/TextView;Ljava/lang/String;I)V

    .line 53
    iget-object v2, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->badge:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 56
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v7

    .line 57
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 59
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 60
    const-string v2, "\u041a\u0430\u043a \u0434\u0435\u0439\u0441\u0442\u0432\u0430"

    const-string v3, "How it works"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 61
    const/4 v2, 0x0

    move v3, v2

    :goto_7b
    const/4 v2, 0x3

    if-ge v3, v2, :cond_119

    .line 62
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 63
    const/16 v2, 0x30

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 64
    add-int/lit8 v2, v3, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v9, 0x41600000    # 14.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 65
    const/16 v9, 0x11

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setGravity(I)V

    .line 66
    const/high16 v9, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    move/from16 v0, p4

    invoke-static {v0, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 67
    new-instance v9, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v10, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-static {v0, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    const/high16 v11, 0x41e00000    # 28.0f

    move-object/from16 v0, p0

    invoke-static {v0, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    invoke-direct {v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 68
    invoke-virtual {v5, v3}, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->how(I)Ljava/lang/String;

    move-result-object v2

    const/high16 v9, 0x41700000    # 15.0f

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v9, v10, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 69
    const/high16 v9, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v2, v9, v10}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 70
    const/high16 v9, 0x3f800000    # 1.0f

    const/16 v10, 0xc

    move-object/from16 v0, p0

    invoke-static {v9, v10, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v9

    invoke-virtual {v8, v2, v9}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    if-nez v3, :cond_116

    const/16 v2, 0xc

    :goto_f7
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_7b

    .line 49
    :cond_105
    const-string v2, "\u041f\u0430\u0441\u0438\u0432\u043d\u0430 \u043f\u0440\u043e\u0446\u0435\u0434\u0443\u0440\u0430"

    const-string v3, "Passive treatment"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_1e

    .line 50
    :cond_110
    invoke-virtual/range {p1 .. p1}, Lcom/isaigu/gymapp/ai/AutoCatalog$Program;->name()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_2c

    .line 71
    :cond_116
    const/16 v2, 0xe

    goto :goto_f7

    .line 73
    :cond_119
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v7, v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v8

    .line 77
    const/high16 v2, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    const/high16 v3, 0x41600000    # 14.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    const/high16 v4, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    const/high16 v9, 0x41800000    # 16.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v8, v2, v3, v4, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 78
    sget v2, Lcom/isaigu/gymapp/widget/XemsUi;->SURFACE:I

    const/high16 v3, 0x41900000    # 18.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->STROKE:I

    const/high16 v9, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-static {v2, v3, v4, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    invoke-static/range {p1 .. p2}, Lcom/isaigu/gymapp/ai/ProgramInfo;->plan(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    move-result-object v9

    .line 80
    const/4 v2, 0x0

    .line 81
    iget-object v3, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :goto_174
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_185

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 82
    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    add-int/2addr v2, v4

    move v4, v2

    .line 83
    goto :goto_174

    .line 84
    :cond_185
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 85
    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 86
    const-string v3, "\u0415\u0442\u0430\u043f\u0438\u0442\u0435 \u00b7 \u0434\u043e\u043a\u043e\u0441\u043d\u0438"

    const-string v10, "The stages \u00b7 tap one"

    invoke-static {v3, v10}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->label(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v10, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v11, 0x0

    const/4 v12, -0x2

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-direct {v10, v11, v12, v13}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u2248 "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    int-to-float v10, v4

    const/high16 v11, 0x42700000    # 60.0f

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " \u043c\u0438\u043d"

    const-string v11, " min"

    invoke-static {v10, v11}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/high16 v10, 0x41700000    # 15.0f

    sget v11, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v3, v10, v11, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 89
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 90
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    move/from16 v0, p4

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/ProgramInfo;->phaseColors(Ljava/util/List;I)[I

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->colors:[I

    .line 91
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    .line 92
    const/4 v2, 0x0

    move v3, v2

    :goto_1f2
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_27c

    .line 93
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 94
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    iget v12, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-float v12, v12

    const/high16 v13, 0x42700000    # 60.0f

    div-float/2addr v12, v13

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\'"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/high16 v11, 0x41500000    # 13.0f

    sget v12, Lcom/isaigu/gymapp/widget/XemsUi;->ON_ACCENT:I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11, v12, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v10

    .line 95
    const/16 v11, 0x11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 96
    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 97
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, 0x0

    const/high16 v13, 0x42400000    # 48.0f

    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v13

    iget v2, v2, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-float v2, v2

    int-to-float v14, v4

    const/high16 v15, 0x41600000    # 14.0f

    div-float/2addr v14, v15

    .line 98
    invoke-static {v2, v14}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v11, v12, v13, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 99
    add-int/lit8 v2, v3, 0x1

    iget-object v12, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-ge v2, v12, :cond_27a

    const/high16 v2, 0x40800000    # 4.0f

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    :goto_263
    iput v2, v11, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 100
    new-instance v2, Lcom/isaigu/gymapp/ai/ProgramInfo$Tap;

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/ProgramInfo$Tap;-><init>(I)V

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    invoke-static {v10}, Lcom/isaigu/gymapp/widget/XemsUi;->pressable(Landroid/view/View;)V

    .line 102
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v10, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1f2

    .line 99
    :cond_27a
    const/4 v2, 0x0

    goto :goto_263

    .line 104
    :cond_27c
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    const/16 v3, 0xa

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 105
    const-string v2, ""

    const/high16 v3, 0x41800000    # 16.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->capName:Landroid/widget/TextView;

    .line 106
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->capName:Landroid/widget/TextView;

    const/16 v3, 0xc

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    const-string v2, ""

    const/high16 v3, 0x41600000    # 14.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->MUTED:I

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    sput-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->capText:Landroid/widget/TextView;

    .line 108
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->capText:Landroid/widget/TextView;

    const/high16 v3, 0x40000000    # 2.0f

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 109
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->capText:Landroid/widget/TextView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    .line 110
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->capText:Landroid/widget/TextView;

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    sput-object v9, Lcom/isaigu/gymapp/ai/ProgramInfo;->shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    .line 112
    iget-object v2, v9, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ProgramInfo;->firstMain(Ljava/util/List;)I

    move-result v2

    invoke-static {v2}, Lcom/isaigu/gymapp/ai/ProgramInfo;->select(I)V

    .line 114
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/widget/XemsUi;->horizontal(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v2

    .line 115
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBaselineAligned(Z)V

    .line 116
    const-string v3, "\ud83d\uddd3"

    const-string v4, "\u041a\u043e\u043b\u043a\u043e \u0447\u0435\u0441\u0442\u043e"

    const-string v9, "How often"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->often()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v3, v4, v9, v1}, Lcom/isaigu/gymapp/ai/ProgramInfo;->fact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v9, 0x0

    const/4 v10, -0x2

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-direct {v4, v9, v10, v11}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    const-string v3, "\u25ce"

    const-string v4, "\u041a\u0443\u0440\u0441"

    const-string v9, "Course"

    invoke-static {v4, v9}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/isaigu/gymapp/ai/ProgramGuide$Entry;->course()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-static {v0, v3, v4, v5, v1}, Lcom/isaigu/gymapp/ai/ProgramInfo;->fact(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/view/View;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0xa

    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    const/16 v3, 0xe

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 120
    const/high16 v2, 0x3fa00000    # 1.25f

    const/16 v3, 0x16

    move-object/from16 v0, p0

    invoke-static {v2, v3, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->weight(FILandroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v7, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v2, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->body:Landroid/widget/LinearLayout;

    const/4 v3, 0x6

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v7, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    const-string v2, "\u0421\u044a\u0432\u0435\u0442\u0438\u0442\u0435 \u0437\u0430 \u043f\u0440\u0435\u0434\u0438 \u0438 \u0441\u043b\u0435\u0434 \u2014 \u0432 \u043e\u0442\u0447\u0435\u0442\u0430 \u0441\u043b\u0435\u0434 \u0441\u0435\u0441\u0438\u044f\u0442\u0430."

    const-string v3, "Tips for before and after \u2014 in the report after the session."

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/high16 v3, 0x41500000    # 13.0f

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->HINT:I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v2

    .line 125
    iget-object v3, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, 0x0

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    const-string v2, "\u0420\u0430\u0437\u0431\u0440\u0430\u0445"

    const-string v3, "Got it"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    move-object/from16 v0, p0

    invoke-static {v0, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v2

    .line 127
    new-instance v3, Lcom/isaigu/gymapp/ai/ProgramInfo$Close;

    invoke-direct {v3, v6}, Lcom/isaigu/gymapp/ai/ProgramInfo$Close;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    iget-object v3, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 129
    iget-object v3, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x43200000    # 160.0f

    move-object/from16 v0, p0

    invoke-static {v0, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    const/high16 v8, 0x42500000    # 52.0f

    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    invoke-direct {v4, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v2, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v2, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    new-instance v3, Lcom/isaigu/gymapp/ai/ProgramInfo$Forget;

    invoke-direct {v3}, Lcom/isaigu/gymapp/ai/ProgramInfo$Forget;-><init>()V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 131
    iget-object v2, v6, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 132
    invoke-static {v7}, Lcom/isaigu/gymapp/widget/XemsUi;->enter(Landroid/view/View;)V
    :try_end_3bd
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3bd} :catch_3bf

    goto/16 :goto_e

    .line 133
    :catch_3bf
    move-exception v2

    .line 134
    const-string v3, "ProgramInfo.open"

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e
.end method

.method static phaseColors(Ljava/util/List;I)[I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/ai/AutoModel$Phase;",
            ">;I)[I"
        }
    .end annotation

    .prologue
    const v3, 0x3ee66666    # 0.45f

    const/4 v0, 0x0

    .line 159
    const/4 v1, 0x3

    new-array v4, v1, [I

    aput p1, v4, v0

    const/4 v1, 0x1

    const v2, -0xbd5a0b

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    aput v2, v4, v1

    const/4 v1, 0x2

    const v2, -0x54b844

    invoke-static {p1, v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v2

    aput v2, v4, v1

    .line 160
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [I

    move v1, v0

    move v2, v0

    .line 162
    :goto_25
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_56

    .line 163
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 164
    invoke-virtual {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->isCooldown()Z

    move-result v3

    if-eqz v3, :cond_40

    const v0, -0xa37241

    :goto_3a
    aput v0, v5, v1

    .line 162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_25

    .line 164
    :cond_40
    const-string v3, "WARMUP"

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->id:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    sget v0, Lcom/isaigu/gymapp/widget/XemsUi;->AMBER:I

    goto :goto_3a

    :cond_4d
    add-int/lit8 v3, v2, 0x1

    array-length v0, v4

    rem-int v0, v2, v0

    aget v0, v4, v0

    move v2, v3

    goto :goto_3a

    .line 166
    :cond_56
    return-object v5
.end method

.method static plan(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Input;)Lcom/isaigu/gymapp/ai/AutoModel$Plan;
    .registers 6

    .prologue
    .line 140
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoModel$Plan;-><init>()V

    .line 141
    iput-object p0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->program:Lcom/isaigu/gymapp/ai/AutoCatalog$Program;

    .line 142
    iput-object p1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->input:Lcom/isaigu/gymapp/ai/AutoModel$Input;

    .line 143
    iget-object v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    iget-object v2, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    iget-object v3, p1, Lcom/isaigu/gymapp/ai/AutoModel$Input;->goal:Lcom/isaigu/gymapp/ai/AutoModel$Goal;

    invoke-static {p0, v3, p1}, Lcom/isaigu/gymapp/ai/AutoPlanner;->maxSeconds(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;)I

    move-result v3

    invoke-static {p0, v2, p1, v3}, Lcom/isaigu/gymapp/ai/AutoCatalog;->phases(Lcom/isaigu/gymapp/ai/AutoCatalog$Program;Lcom/isaigu/gymapp/ai/AutoModel$Goal;Lcom/isaigu/gymapp/ai/AutoModel$Input;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 144
    return-object v0
.end method

.method static select(I)V
    .registers 11

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 170
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramInfo;->shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    if-eqz v0, :cond_16

    if-ltz p0, :cond_16

    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramInfo;->shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p0, v0, :cond_17

    .line 185
    :cond_16
    :goto_16
    return-void

    .line 173
    :cond_17
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    move v0, v1

    .line 174
    :goto_1e
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_64

    .line 175
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->bar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 176
    if-ne v0, p0, :cond_53

    move v5, v6

    .line 177
    :goto_2f
    if-eqz v5, :cond_55

    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->colors:[I

    aget v2, v2, v0

    :goto_35
    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v9, v3

    .line 178
    if-eqz v5, :cond_60

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    move v4, v3

    :goto_41
    if-eqz v5, :cond_62

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v7, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    .line 177
    :goto_49
    invoke-static {v2, v9, v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 174
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    :cond_53
    move v5, v1

    .line 176
    goto :goto_2f

    .line 177
    :cond_55
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->colors:[I

    aget v2, v2, v0

    const/16 v3, 0x66

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v2

    goto :goto_35

    :cond_60
    move v4, v1

    .line 178
    goto :goto_41

    :cond_62
    move v3, v1

    goto :goto_49

    .line 180
    :cond_64
    sget-object v0, Lcom/isaigu/gymapp/ai/ProgramInfo;->shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    iget-object v0, v0, Lcom/isaigu/gymapp/ai/AutoModel$Plan;->phases:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;

    .line 181
    iget v1, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->durationS:I

    int-to-float v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 182
    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->capName:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameBg:Ljava/lang/String;

    iget-object v5, v0, Lcom/isaigu/gymapp/ai/AutoModel$Phase;->nameEn:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u043c\u0438\u043d"

    const-string v4, " min"

    invoke-static {v3, v4}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    sget-object v1, Lcom/isaigu/gymapp/ai/ProgramInfo;->capName:Landroid/widget/TextView;

    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->colors:[I

    aget v2, v2, p0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 184
    sget-object v1, Lcom/isaigu/gymapp/ai/ProgramInfo;->capText:Landroid/widget/TextView;

    sget-object v2, Lcom/isaigu/gymapp/ai/ProgramInfo;->shown:Lcom/isaigu/gymapp/ai/AutoModel$Plan;

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/ai/AutoCues;->phaseGoal(Lcom/isaigu/gymapp/ai/AutoModel$Plan;Lcom/isaigu/gymapp/ai/AutoModel$Phase;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_16
.end method
