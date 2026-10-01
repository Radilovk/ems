.class public final Lcom/isaigu/gymapp/ai/AutoLook;
.super Ljava/lang/Object;
.source "AutoLook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoLook$Block;
    }
.end annotation


# static fields
.field private static final BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

.field private static final HIDE_IDS:[Ljava/lang/String;

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

.field private static modeIds:[I

.field private static on:Z

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

    .line 36
    const-string v0, ""

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->signLabel:Ljava/lang/String;

    .line 205
    new-instance v0, Lcom/isaigu/gymapp/ai/AutoLook$Block;

    invoke-direct {v0}, Lcom/isaigu/gymapp/ai/AutoLook$Block;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

    .line 207
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 46
    const-string v0, "\u0410\u0412\u0422\u041e"

    const-string v1, "AUTO"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->apply(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method static apply(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .prologue
    .line 51
    if-nez p0, :cond_3

    .line 66
    :goto_2
    return-void

    .line 55
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 56
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    if-nez v1, :cond_23

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MODE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->HIDE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    .line 60
    :cond_23
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 61
    sput-object p1, Lcom/isaigu/gymapp/ai/AutoLook;->signLabel:Ljava/lang/String;

    .line 62
    if-eqz p2, :cond_48

    :goto_2a
    invoke-static {v0, p2}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2d} :catch_2e

    goto :goto_2

    .line 63
    :catch_2e
    move-exception v0

    .line 64
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

    .line 62
    :cond_48
    :try_start_48
    const-string p2, ""
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_48 .. :try_end_4a} :catch_2e

    goto :goto_2a
.end method

.method private static hide(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 210
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 211
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1e

    .line 214
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 216
    :cond_1e
    return-void
.end method

.method private static hideIn(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 171
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->veil(Landroid/view/View;)V

    .line 180
    :cond_f
    return-void

    .line 174
    :cond_10
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_f

    .line 175
    check-cast p0, Landroid/view/ViewGroup;

    .line 176
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_f

    .line 177
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_17
.end method

.method private static ids(Landroid/content/Context;[Ljava/lang/String;)[I
    .registers 8

    .prologue
    .line 104
    array-length v0, p1

    new-array v1, v0, [I

    .line 105
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v3, p1, v0

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 105
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 108
    :cond_1c
    return-object v1
.end method

.method private static in(I[I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 112
    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    if-nez p0, :cond_7

    .line 120
    :cond_6
    :goto_6
    return v1

    :cond_7
    move v0, v1

    .line 115
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 116
    aget v2, p1, v0

    if-ne v2, p0, :cond_11

    .line 117
    const/4 v1, 0x1

    goto :goto_6

    .line 115
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static isOn()Z
    .registers 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    return v0
.end method

.method static restore()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 69
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    if-nez v0, :cond_6

    .line 101
    :goto_5
    return-void

    .line 72
    :cond_6
    sput-boolean v3, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 74
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

    if-eqz v0, :cond_73

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 76
    if-eqz v1, :cond_12

    .line 79
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    .line 80
    if-eqz v2, :cond_65

    .line 81
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_3b} :catch_3c

    goto :goto_12

    .line 95
    :catch_3c
    move-exception v0

    .line 96
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

    .line 98
    :cond_55
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 99
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 100
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_5

    .line 84
    :cond_65
    :try_start_65
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_12

    .line 87
    :cond_73
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move v2, v3

    .line 88
    :goto_7f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_55

    .line 89
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 90
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 91
    if-eqz v0, :cond_9a

    if-eqz v1, :cond_9a

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_9a
    .catch Ljava/lang/Throwable; {:try_start_65 .. :try_end_9a} :catch_3c

    .line 88
    :cond_9a
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7f
.end method

.method private static rowOf(Landroid/view/View;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 154
    .line 155
    const/4 v0, 0x0

    move v3, v0

    move-object v2, p0

    :goto_4
    const/16 v0, 0x8

    if-ge v3, v0, :cond_30

    if-eqz v2, :cond_30

    .line 156
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 157
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-nez v4, :cond_14

    move-object v0, v1

    .line 166
    :goto_13
    return-object v0

    .line 160
    :cond_14
    instance-of v4, v0, Landroid/widget/AbsListView;

    if-nez v4, :cond_28

    .line 161
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

    .line 162
    goto :goto_13

    .line 164
    :cond_2a
    check-cast v0, Landroid/view/View;

    .line 155
    add-int/lit8 v3, v3, 0x1

    move-object v2, v0

    goto :goto_4

    :cond_30
    move-object v0, v1

    .line 166
    goto :goto_13
.end method

.method private static sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 219
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 220
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

    .line 221
    if-nez v0, :cond_9e

    .line 222
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 223
    const/high16 v0, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 224
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 225
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 226
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 227
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 228
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

    .line 229
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 228
    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 230
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 232
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 233
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 234
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 235
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_91
    :goto_91
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_9a

    .line 241
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 243
    :cond_9a
    return-void

    .line 220
    :cond_9b
    const-string v1, ""

    goto :goto_2c

    .line 236
    :cond_9e
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_91

    .line 237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_91
.end method

.method private static veil(Landroid/view/View;)V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 188
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->VEILED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    :cond_23
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2e

    .line 193
    invoke-virtual {p0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 195
    :cond_2e
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->BLOCK:Lcom/isaigu/gymapp/ai/AutoLook$Block;

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 196
    return-void
.end method

.method private static walk(Landroid/view/View;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 125
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 150
    :cond_5
    :goto_5
    return-void

    .line 128
    :cond_6
    check-cast p0, Landroid/view/ViewGroup;

    move v0, v1

    move v2, v1

    .line 130
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 131
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 132
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 133
    const/16 v2, 0x8

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->hide(Landroid/view/View;I)V

    .line 134
    const/4 v2, 0x1

    .line 130
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 137
    :cond_29
    if-eqz v2, :cond_3f

    .line 138
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_35

    move-object v0, p0

    .line 139
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 141
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->rowOf(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_5

    .line 143
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    goto :goto_5

    .line 147
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 148
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V

    .line 147
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f
.end method
