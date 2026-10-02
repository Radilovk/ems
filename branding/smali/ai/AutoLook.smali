.class public final Lcom/isaigu/gymapp/ai/AutoLook;
.super Ljava/lang/Object;
.source "AutoLook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoLook$MainKey;,
        Lcom/isaigu/gymapp/ai/AutoLook$Block;
    }
.end annotation


# static fields
.field private static final BADGES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static final BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

.field private static final HIDE_IDS:[Ljava/lang/String;

.field private static final MAIN_KEYS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final MODE_IDS:[Ljava/lang/String;

.field private static final SAVED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final SIGNS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG_ICON:I = 0x7f7a0001

.field private static final VEILED:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private static cornerId:I

.field private static hideIds:[I

.field private static mainStart:Landroid/view/View;

.field private static modeIds:[I

.field private static on:Z

.field private static paramLive:Z

.field private static paramText:Ljava/lang/String;

.field private static signLabel:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "mainModeBtn"

    aput-object v1, v0, v2

    const-string v1, "strenthExist"

    aput-object v1, v0, v3

    const-string v1, "youyangyundong"

    aput-object v1, v0, v4

    const-string v1, "anmo"

    aput-object v1, v0, v5

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->MODE_IDS:[Ljava/lang/String;

    .line 26
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "hzValue"

    aput-object v1, v0, v2

    const-string v1, "pauseMaValue"

    aput-object v1, v0, v3

    const-string v1, "pauseHzValue"

    aput-object v1, v0, v4

    const-string v1, "paulsecontinue"

    aput-object v1, v0, v5

    const-string v1, "pulseContinueLabel"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "paulsestop"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "pulsePauseLabel"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "setting"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "save"

    aput-object v2, v0, v1

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->HIDE_IDS:[Ljava/lang/String;

    .line 30
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    .line 32
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    .line 37
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->paramText:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BADGES:Ljava/util/Map;

    .line 42
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->signLabel:Ljava/lang/String;

    .line 77
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    .line 330
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoLook$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoLook$Block;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

    .line 332
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 52
    const-string v0, "\u0410\u0412\u0422\u041e"

    const-string v1, "AUTO"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->apply(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method static apply(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 57
    if-nez p0, :cond_3

    .line 74
    :goto_2
    return-void

    .line 61
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 62
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    if-nez v1, :cond_3d

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MODE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->HIDE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "pauseMaValue"

    const-string v3, "id"

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/AutoLook;->cornerId:I

    .line 68
    :cond_3d
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 69
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoLook;->signLabel:Ljava/lang/String;

    .line 70
    if-eqz p2, :cond_62

    :goto_44
    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_47} :catch_48

    goto :goto_2

    .line 71
    :catch_48
    move-exception v0

    .line 72
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "look: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_62
    :try_start_62
    const-string p2, ""
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_64} :catch_48

    goto :goto_44
.end method

.method private static badge(Landroid/view/View;)V
    .registers 11

    .prologue
    const/4 v2, 0x0

    const/4 v9, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 348
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout;

    if-nez v0, :cond_d

    .line 388
    :cond_c
    :goto_c
    return-void

    .line 351
    :cond_d
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 352
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->BADGES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 353
    if-eqz v1, :cond_23

    invoke-virtual {v1}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, v0, :cond_9e

    .line 354
    :cond_23
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 355
    const-string v1, ""

    const/high16 v5, 0x41300000    # 11.0f

    sget v6, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    const/4 v7, 0x1

    invoke-static {v4, v1, v5, v6, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v1

    .line 356
    const v5, 0x800005

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 357
    const/4 v5, 0x3

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 358
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 359
    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 360
    const/high16 v5, 0x40e00000    # 7.0f

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 361
    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    .line 362
    invoke-virtual {v1, v5, v6, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 363
    sget v5, Lcom/isaigu/gymapp/widget/XemsUi;->CARD:I

    const/16 v6, 0xe6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v5

    const/high16 v6, 0x41000000    # 8.0f

    invoke-static {v4, v6}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v8, 0x88

    .line 364
    invoke-static {v7, v8}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v7

    invoke-static {v4, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v4

    .line 363
    invoke-static {v5, v6, v7, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 365
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v9, v9}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 367
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_d3

    .line 368
    const/4 v5, 0x6

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 369
    const/4 v5, 0x7

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 374
    :goto_96
    invoke-virtual {v0, v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 375
    sget-object v4, Lcom/isaigu/gymapp/ai/AutoLook;->BADGES:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    :cond_9e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->paramText:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_af

    .line 378
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->paramText:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    :cond_af
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->paramText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_de

    move v0, v2

    .line 381
    :goto_b8
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eq v2, v0, :cond_c1

    .line 382
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 384
    :cond_c1
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->paramLive:Z

    if-eqz v0, :cond_e1

    move v0, v3

    .line 385
    :goto_c6
    invoke-virtual {v1}, Landroid/widget/TextView;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_c

    .line 386
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto/16 :goto_c

    .line 371
    :cond_d3
    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 372
    const/16 v5, 0xb

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_96

    .line 380
    :cond_de
    const/16 v0, 0x8

    goto :goto_b8

    .line 384
    :cond_e1
    const v0, 0x3f19999a    # 0.6f

    goto :goto_c6
.end method

.method static bindMainKeys(Landroid/view/View;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 86
    if-nez p0, :cond_4

    .line 111
    :cond_3
    :goto_3
    return-void

    .line 90
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "allStartPause"

    const-string v5, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "allStop"

    const-string v6, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 94
    if-eqz v3, :cond_8b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 95
    :goto_32
    if-eqz v4, :cond_38

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 96
    :cond_38
    if-eqz v1, :cond_50

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 97
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 98
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_50
    if-eqz v0, :cond_68

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 101
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 102
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_68
    if-eqz v1, :cond_3

    .line 105
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    .line 106
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->icon(Landroid/view/View;Z)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6f} :catch_70

    goto :goto_3

    .line 108
    :catch_70
    move-exception v0

    .line 109
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "main keys: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8b
    move-object v1, v0

    .line 94
    goto :goto_32
.end method

.method private static hide(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 335
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 336
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 338
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1e

    .line 339
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 341
    :cond_1e
    return-void
.end method

.method private static hideIn(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 292
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 293
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->veil(Landroid/view/View;)V

    .line 294
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/ai/AutoLook;->cornerId:I

    if-ne v0, v1, :cond_1e

    sget v0, Lcom/isaigu/gymapp/ai/AutoLook;->cornerId:I

    if-eqz v0, :cond_1e

    .line 295
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->badge(Landroid/view/View;)V

    .line 305
    :cond_1e
    return-void

    .line 299
    :cond_1f
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 300
    check-cast p0, Landroid/view/ViewGroup;

    .line 301
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 302
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    .line 301
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method private static icon(Landroid/view/View;Z)V
    .registers 7

    .prologue
    const v4, 0x7f7a0001

    .line 115
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_34

    const-string v0, "stop2"

    :goto_f
    const-string v3, "mipmap"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 117
    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    if-eqz v1, :cond_33

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_33

    .line 119
    :cond_29
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 122
    :cond_33
    return-void

    .line 116
    :cond_34
    const-string v0, "start"

    goto :goto_f
.end method

.method private static ids(Landroid/content/Context;[Ljava/lang/String;)[I
    .registers 8

    .prologue
    .line 220
    array-length v0, p1

    new-array v1, v0, [I

    .line 221
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 222
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v3, p1, v0

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 221
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 224
    :cond_1c
    return-object v1
.end method

.method private static in(I[I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 228
    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    if-nez p0, :cond_7

    .line 236
    :cond_6
    :goto_6
    return v1

    :cond_7
    move v0, v1

    .line 231
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 232
    aget v2, p1, v0

    if-ne v2, p0, :cond_11

    .line 233
    const/4 v1, 0x1

    goto :goto_6

    .line 231
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static isOn()Z
    .registers 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    return v0
.end method

.method static params(Ljava/lang/String;Z)V
    .registers 2

    .prologue
    .line 287
    if-eqz p0, :cond_7

    :goto_2
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoLook;->paramText:Ljava/lang/String;

    .line 288
    sput-boolean p1, Lcom/isaigu/gymapp/ai/AutoLook;->paramLive:Z

    .line 289
    return-void

    .line 287
    :cond_7
    const-string p0, ""

    goto :goto_2
.end method

.method static restore()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 176
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    if-nez v0, :cond_6

    .line 217
    :goto_5
    return-void

    .line 179
    :cond_6
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 181
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_12
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 182
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 183
    if-eqz v1, :cond_12

    .line 186
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 187
    if-eqz v2, :cond_6e

    .line 188
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 189
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3b} :catch_3c

    goto :goto_12

    .line 209
    :catch_3c
    move-exception v0

    .line 210
    const-string v1, "auto"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "look restore: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_55
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 213
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BADGES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->paramText:Ljava/lang/String;

    goto :goto_5

    .line 191
    :cond_6e
    :try_start_6e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 194
    :cond_7c
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BADGES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v3

    .line 195
    :goto_88
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_af

    .line 196
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BADGES:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 197
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_ab

    if-eqz v0, :cond_ab

    .line 198
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 195
    :cond_ab
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_88

    .line 201
    :cond_af
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v3

    .line 202
    :goto_bb
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_55

    .line 203
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 205
    if-eqz v0, :cond_d6

    if-eqz v1, :cond_d6

    .line 206
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_d6
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_d6} :catch_3c

    .line 202
    :cond_d6
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_bb
.end method

.method private static rowOf(Landroid/view/View;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 270
    .line 271
    const/4 v0, 0x0

    move v3, v0

    move-object v2, p0

    :goto_4
    const/16 v0, 0x8

    if-ge v3, v0, :cond_30

    if-eqz v2, :cond_30

    .line 272
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 273
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-nez v4, :cond_14

    move-object v0, v1

    .line 282
    :goto_13
    return-object v0

    .line 276
    :cond_14
    instance-of v4, v0, Landroid/widget/AbsListView;

    if-nez v4, :cond_28

    .line 277
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RecyclerView"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2a

    :cond_28
    move-object v0, v2

    .line 278
    goto :goto_13

    .line 280
    :cond_2a
    check-cast v0, Landroid/view/View;

    .line 271
    add-int/lit8 v3, v3, 0x1

    move-object v2, v0

    goto :goto_4

    :cond_30
    move-object v0, v1

    .line 282
    goto :goto_13
.end method

.method private static sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 391
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->signLabel:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_9b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 393
    if-nez v0, :cond_9e

    .line 394
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 395
    const/high16 v0, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 396
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 397
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 398
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 399
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 400
    sget v1, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v3, 0x26

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v1

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/isaigu/gymapp/widget/XemsUi;->GO:I

    const/16 v5, 0x99

    .line 401
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 400
    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 402
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 404
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 405
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 406
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 407
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_91
    :goto_91
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9a

    .line 413
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 415
    :cond_9a
    return-void

    .line 392
    :cond_9b
    const-string v1, ""

    goto :goto_2c

    .line 408
    :cond_9e
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 409
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91
.end method

.method static unbindMainKeys(Z)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 128
    if-eqz v0, :cond_c

    .line 129
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_c

    .line 133
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 134
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 136
    :try_start_2c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    const v1, 0x7f7a0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 137
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AutoLook;->icon(Landroid/view/View;Z)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3a} :catch_3d

    .line 141
    :cond_3a
    :goto_3a
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    .line 142
    return-void

    .line 138
    :catch_3d
    move-exception v0

    goto :goto_3a
.end method

.method private static veil(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 313
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2e

    .line 318
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 320
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 321
    return-void
.end method

.method private static walk(Landroid/view/View;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 241
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 266
    :cond_5
    :goto_5
    return-void

    .line 244
    :cond_6
    check-cast p0, Landroid/view/ViewGroup;

    move v0, v1

    move v2, v1

    .line 246
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 247
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 248
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 249
    const/16 v2, 0x8

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->hide(Landroid/view/View;I)V

    .line 250
    const/4 v2, 0x1

    .line 246
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 253
    :cond_29
    if-eqz v2, :cond_3f

    .line 254
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_35

    move-object v0, p0

    .line 255
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 257
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->rowOf(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 258
    if-eqz v0, :cond_5

    .line 259
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    goto :goto_5

    .line 263
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 264
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V

    .line 263
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f
.end method
