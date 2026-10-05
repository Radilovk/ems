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

.field private static final PARAMS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation
.end field

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

.field private static hideIds:[I

.field private static mainStart:Landroid/view/View;

.field private static modeIds:[I

.field private static on:Z

.field private static paramLive:Z

.field private static paramVals:[I

.field private static pulseId:I

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

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->PARAMS:Ljava/util/Map;

    .line 43
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->signLabel:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    .line 331
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoLook$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoLook$Block;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

    .line 333
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 53
    const-string v0, "\u0410\u0412\u0422\u041e"

    const-string v1, "AUTO"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->apply(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method static apply(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 58
    if-nez p0, :cond_3

    .line 75
    :goto_2
    return-void

    .line 62
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    if-nez v1, :cond_3d

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MODE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->HIDE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    .line 66
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "paulsecontinue"

    const-string v3, "id"

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 66
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/isaigu/gymapp/ai/AutoLook;->pulseId:I

    .line 69
    :cond_3d
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 70
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoLook;->signLabel:Ljava/lang/String;

    .line 71
    if-eqz p2, :cond_62

    :goto_44
    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_47} :catch_48

    goto :goto_2

    .line 72
    :catch_48
    move-exception v0

    .line 73
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

    .line 71
    :cond_62
    :try_start_62
    const-string p2, ""
    :try_end_64
    .catch Ljava/lang/Throwable; {:try_start_62 .. :try_end_64} :catch_48

    goto :goto_44
.end method

.method static bindMainKeys(Landroid/view/View;Z)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 87
    if-nez p0, :cond_4

    .line 112
    :cond_3
    :goto_3
    return-void

    .line 91
    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "allStartPause"

    const-string v5, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 94
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "allStop"

    const-string v6, "id"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v6, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 95
    if-eqz v3, :cond_8b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 96
    :goto_32
    if-eqz v4, :cond_38

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 97
    :cond_38
    if-eqz v1, :cond_50

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_50

    .line 98
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;-><init>(Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 101
    :cond_50
    if-eqz v0, :cond_68

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_68

    .line 102
    new-instance v2, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/isaigu/gymapp/ai/AutoLook$MainKey;-><init>(Z)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 105
    :cond_68
    if-eqz v1, :cond_3

    .line 106
    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    .line 107
    invoke-static {v1, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->icon(Landroid/view/View;Z)V
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_6f} :catch_70

    goto :goto_3

    .line 109
    :catch_70
    move-exception v0

    .line 110
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

    .line 95
    goto :goto_32
.end method

.method private static hide(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 336
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 337
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1e

    .line 340
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 342
    :cond_1e
    return-void
.end method

.method private static hideIn(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 293
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 294
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->veil(Landroid/view/View;)V

    .line 295
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/isaigu/gymapp/ai/AutoLook;->pulseId:I

    if-ne v0, v1, :cond_1e

    sget v0, Lcom/isaigu/gymapp/ai/AutoLook;->pulseId:I

    if-eqz v0, :cond_1e

    .line 296
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->paramColumn(Landroid/view/View;)V

    .line 306
    :cond_1e
    return-void

    .line 300
    :cond_1f
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1e

    .line 301
    check-cast p0, Landroid/view/ViewGroup;

    .line 302
    const/4 v0, 0x0

    :goto_26
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1e

    .line 303
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_26
.end method

.method private static icon(Landroid/view/View;Z)V
    .registers 7

    .prologue
    const v4, 0x7f7a0001

    .line 116
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 117
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

    .line 118
    invoke-virtual {p0, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 119
    if-eqz v1, :cond_33

    if-eqz v0, :cond_29

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v1, :cond_33

    .line 120
    :cond_29
    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v4, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 123
    :cond_33
    return-void

    .line 117
    :cond_34
    const-string v0, "start"

    goto :goto_f
.end method

.method private static ids(Landroid/content/Context;[Ljava/lang/String;)[I
    .registers 8

    .prologue
    .line 221
    array-length v0, p1

    new-array v1, v0, [I

    .line 222
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 223
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v3, p1, v0

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 222
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 225
    :cond_1c
    return-object v1
.end method

.method private static in(I[I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 229
    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    if-nez p0, :cond_7

    .line 237
    :cond_6
    :goto_6
    return v1

    :cond_7
    move v0, v1

    .line 232
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 233
    aget v2, p1, v0

    if-ne v2, p0, :cond_11

    .line 234
    const/4 v1, 0x1

    goto :goto_6

    .line 232
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static isOn()Z
    .registers 1

    .prologue
    .line 48
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    return v0
.end method

.method private static paramColumn(Landroid/view/View;)V
    .registers 16

    .prologue
    const/16 v5, 0x8

    const/high16 v14, 0x41000000    # 8.0f

    const/4 v13, 0x4

    const/4 v12, 0x1

    const/4 v3, 0x0

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/LinearLayout;

    if-nez v0, :cond_1c

    .line 407
    :cond_1b
    :goto_1b
    return-void

    .line 353
    :cond_1c
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 354
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    move v2, v3

    .line 356
    :goto_29
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v2, v4, :cond_3d

    .line 357
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 358
    instance-of v6, v4, Landroid/widget/RelativeLayout;

    if-eqz v6, :cond_3a

    .line 359
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoLook;->hide(Landroid/view/View;I)V

    .line 356
    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_29

    .line 362
    :cond_3d
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->PARAMS:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 363
    if-eqz v2, :cond_4d

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, v1, :cond_d7

    .line 364
    :cond_4d
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 365
    invoke-static {v6}, Lcom/isaigu/gymapp/widget/XemsUi;->vertical(Landroid/content/Context;)Landroid/widget/LinearLayout;

    move-result-object v4

    .line 366
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-direct {v2, v7, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 368
    invoke-static {v6, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v7

    invoke-static {v6, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    invoke-virtual {v2, v7, v8, v9, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 369
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-static {v7, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v1, v4, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 370
    new-array v7, v13, [I

    fill-array-data v7, :array_1bc

    move v0, v3

    .line 371
    :goto_82
    array-length v2, v7

    if-ge v0, v2, :cond_d1

    .line 372
    const-string v2, ""

    const/high16 v8, 0x41600000    # 14.0f

    sget v9, Lcom/isaigu/gymapp/widget/XemsUi;->TEXT:I

    invoke-static {v6, v2, v8, v9, v12}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v8

    .line 373
    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 374
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 375
    new-instance v2, Lcom/isaigu/gymapp/ai/ImpulseGlyph;

    aget v9, v7, v0

    sget v10, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const v11, 0x3fcccccd    # 1.6f

    invoke-static {v6, v11}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v11

    int-to-float v11, v11

    invoke-direct {v2, v9, v10, v11}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;-><init>(IIF)V

    .line 376
    const/high16 v9, 0x41800000    # 16.0f

    invoke-static {v6, v9}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41800000    # 16.0f

    invoke-static {v6, v10}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v10

    invoke-virtual {v2, v3, v3, v9, v10}, Lcom/isaigu/gymapp/ai/ImpulseGlyph;->setBounds(IIII)V

    .line 377
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v8, v2, v9, v10, v11}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 378
    invoke-static {v6, v14}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v8, v2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 379
    if-nez v0, :cond_cf

    move v2, v3

    :goto_c5
    invoke-static {v6, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->matchWrap(Landroid/content/Context;I)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v4, v8, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 371
    add-int/lit8 v0, v0, 0x1

    goto :goto_82

    .line 379
    :cond_cf
    const/4 v2, 0x6

    goto :goto_c5

    .line 381
    :cond_d1
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->PARAMS:Ljava/util/Map;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v4

    .line 383
    :cond_d7
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->paramVals:[I

    .line 384
    if-eqz v1, :cond_19d

    move v0, v3

    .line 385
    :goto_dc
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_e5

    .line 386
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 388
    :cond_e5
    if-eqz v1, :cond_1b

    .line 391
    new-array v6, v13, [Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " Hz"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v4, v1, v12

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " \u00b5s"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v12

    const/4 v0, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x2

    aget v7, v1, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " / "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v7, 0x3

    aget v7, v1, v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " s"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v0

    const/4 v4, 0x3

    .line 392
    aget v0, v1, v13

    if-lez v0, :cond_1a0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget v7, v1, v13

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " Hz \u00b7 "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v7, 0x5

    aget v1, v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_164
    aput-object v0, v6, v4

    move v1, v3

    .line 393
    :goto_167
    array-length v0, v6

    if-ge v1, v0, :cond_1a5

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_1a5

    .line 394
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 395
    aget-object v4, v6, v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_187

    .line 396
    aget-object v4, v6, v1

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    :cond_187
    aget-object v4, v6, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1a3

    move v4, v3

    .line 399
    :goto_190
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-eq v7, v4, :cond_199

    .line 400
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 393
    :cond_199
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_167

    :cond_19d
    move v0, v5

    .line 384
    goto/16 :goto_dc

    .line 392
    :cond_1a0
    const-string v0, ""

    goto :goto_164

    :cond_1a3
    move v4, v5

    .line 398
    goto :goto_190

    .line 403
    :cond_1a5
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->paramLive:Z

    if-eqz v0, :cond_1b8

    const/high16 v0, 0x3f800000    # 1.0f

    .line 404
    :goto_1ab
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_1b

    .line 405
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto/16 :goto_1b

    .line 403
    :cond_1b8
    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_1ab

    .line 370
    :array_1bc
    .array-data 4
        0x0
        0x4
        0x2
        0x3
    .end array-data
.end method

.method static params([IZ)V
    .registers 2

    .prologue
    .line 288
    sput-object p0, Lcom/isaigu/gymapp/ai/AutoLook;->paramVals:[I

    .line 289
    sput-boolean p1, Lcom/isaigu/gymapp/ai/AutoLook;->paramLive:Z

    .line 290
    return-void
.end method

.method static restore()V
    .registers 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 177
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    if-nez v0, :cond_7

    .line 218
    :goto_6
    return-void

    .line 180
    :cond_7
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 182
    :try_start_9
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    :goto_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 184
    if-eqz v1, :cond_13

    .line 187
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 188
    if-eqz v2, :cond_6d

    .line 189
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 190
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_3c} :catch_3d

    goto :goto_13

    .line 210
    :catch_3d
    move-exception v0

    .line 211
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

    .line 213
    :cond_56
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 214
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 215
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->PARAMS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 217
    sput-object v5, Lcom/isaigu/gymapp/ai/AutoLook;->paramVals:[I

    goto :goto_6

    .line 192
    :cond_6d
    :try_start_6d
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_13

    .line 195
    :cond_7b
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->PARAMS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v3

    .line 196
    :goto_87
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_ae

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->PARAMS:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 198
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_aa

    if-eqz v0, :cond_aa

    .line 199
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 196
    :cond_aa
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_87

    .line 202
    :cond_ae
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v3

    .line 203
    :goto_ba
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_56

    .line 204
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 205
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 206
    if-eqz v0, :cond_d5

    if-eqz v1, :cond_d5

    .line 207
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_d5
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_d5} :catch_3d

    .line 203
    :cond_d5
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_ba
.end method

.method private static rowOf(Landroid/view/View;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 271
    .line 272
    const/4 v0, 0x0

    move v3, v0

    move-object v2, p0

    :goto_4
    const/16 v0, 0x8

    if-ge v3, v0, :cond_30

    if-eqz v2, :cond_30

    .line 273
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 274
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-nez v4, :cond_14

    move-object v0, v1

    .line 283
    :goto_13
    return-object v0

    .line 277
    :cond_14
    instance-of v4, v0, Landroid/widget/AbsListView;

    if-nez v4, :cond_28

    .line 278
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

    .line 279
    goto :goto_13

    .line 281
    :cond_2a
    check-cast v0, Landroid/view/View;

    .line 272
    add-int/lit8 v3, v3, 0x1

    move-object v2, v0

    goto :goto_4

    :cond_30
    move-object v0, v1

    .line 283
    goto :goto_13
.end method

.method private static sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 410
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 411
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

    .line 412
    if-nez v0, :cond_9e

    .line 413
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 414
    const/high16 v0, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 415
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 416
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 417
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 418
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 419
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

    .line 420
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 419
    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 421
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 423
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 424
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 425
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    :cond_91
    :goto_91
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9a

    .line 432
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 434
    :cond_9a
    return-void

    .line 411
    :cond_9b
    const-string v1, ""

    goto :goto_2c

    .line 427
    :cond_9e
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 428
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91
.end method

.method static unbindMainKeys(Z)V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 128
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

    .line 129
    if-eqz v0, :cond_c

    .line 130
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 131
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_c

    .line 134
    :cond_23
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->MAIN_KEYS:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 135
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    if-eqz v0, :cond_3a

    .line 137
    :try_start_2c
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    const v1, 0x7f7a0001

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 138
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/ai/AutoLook;->icon(Landroid/view/View;Z)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_3a} :catch_3d

    .line 142
    :cond_3a
    :goto_3a
    sput-object v3, Lcom/isaigu/gymapp/ai/AutoLook;->mainStart:Landroid/view/View;

    .line 143
    return-void

    .line 139
    :catch_3d
    move-exception v0

    goto :goto_3a
.end method

.method private static veil(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 314
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 315
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2e

    .line 319
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 321
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 322
    return-void
.end method

.method private static walk(Landroid/view/View;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 242
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 267
    :cond_5
    :goto_5
    return-void

    .line 245
    :cond_6
    check-cast p0, Landroid/view/ViewGroup;

    move v0, v1

    move v2, v1

    .line 247
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 248
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 249
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 250
    const/16 v2, 0x8

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->hide(Landroid/view/View;I)V

    .line 251
    const/4 v2, 0x1

    .line 247
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 254
    :cond_29
    if-eqz v2, :cond_3f

    .line 255
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_35

    move-object v0, p0

    .line 256
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 258
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->rowOf(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 259
    if-eqz v0, :cond_5

    .line 260
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    goto :goto_5

    .line 264
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 265
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f
.end method
