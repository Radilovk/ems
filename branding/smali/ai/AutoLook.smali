.class public final Lcom/isaigu/gymapp/ai/AutoLook;
.super Ljava/lang/Object;
.source "AutoLook.java"


# static fields
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

.field private static hideIds:[I

.field private static modeIds:[I

.field private static on:Z


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

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(Landroid/view/View;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 45
    if-nez p0, :cond_3

    .line 59
    :goto_2
    return-void

    .line 49
    :cond_3
    :try_start_3
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 50
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    if-nez v1, :cond_23

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->MODE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/isaigu/gymapp/ai/AutoLook;->HIDE_IDS:[Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->ids(Landroid/content/Context;[Ljava/lang/String;)[I

    move-result-object v1

    sput-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    .line 54
    :cond_23
    const/4 v1, 0x1

    sput-boolean v1, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 55
    if-eqz p1, :cond_46

    :goto_28
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_2b} :catch_2c

    goto :goto_2

    .line 56
    :catch_2c
    move-exception v0

    .line 57
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

    .line 55
    :cond_46
    :try_start_46
    const-string p1, ""
    :try_end_48
    .catch Ljava/lang/Throwable; {:try_start_46 .. :try_end_48} :catch_2c

    goto :goto_28
.end method

.method private static hide(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 167
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 168
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    :cond_15
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_1e

    .line 171
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 173
    :cond_1e
    return-void
.end method

.method private static hideIn(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 154
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v0

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->hideIds:[I

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 155
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/ai/AutoLook;->hide(Landroid/view/View;I)V

    .line 164
    :cond_10
    return-void

    .line 158
    :cond_11
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_10

    .line 159
    check-cast p0, Landroid/view/ViewGroup;

    .line 160
    const/4 v0, 0x0

    :goto_18
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 161
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_18
.end method

.method private static ids(Landroid/content/Context;[Ljava/lang/String;)[I
    .registers 8

    .prologue
    .line 88
    array-length v0, p1

    new-array v1, v0, [I

    .line 89
    const/4 v0, 0x0

    :goto_4
    array-length v2, p1

    if-ge v0, v2, :cond_1c

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    aget-object v3, p1, v0

    const-string v4, "id"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    aput v2, v1, v0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 92
    :cond_1c
    return-object v1
.end method

.method private static in(I[I)Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 96
    const/4 v0, -0x1

    if-eq p0, v0, :cond_6

    if-nez p0, :cond_7

    .line 104
    :cond_6
    :goto_6
    return v1

    :cond_7
    move v0, v1

    .line 99
    :goto_8
    array-length v2, p1

    if-ge v0, v2, :cond_6

    .line 100
    aget v2, p1, v0

    if-ne v2, p0, :cond_11

    .line 101
    const/4 v1, 0x1

    goto :goto_6

    .line 99
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_8
.end method

.method public static isOn()Z
    .registers 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    return v0
.end method

.method static restore()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 62
    sget-boolean v0, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    if-nez v0, :cond_6

    .line 85
    :goto_5
    return-void

    .line 65
    :cond_6
    sput-boolean v2, Lcom/isaigu/gymapp/ai/AutoLook;->on:Z

    .line 67
    :try_start_8
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_12
    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 68
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 69
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_37} :catch_38

    goto :goto_12

    .line 80
    :catch_38
    move-exception v0

    .line 81
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

    .line 83
    :cond_51
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SAVED:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 84
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto :goto_5

    .line 72
    :cond_5c
    :try_start_5c
    new-instance v3, Ljava/util/ArrayList;

    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 73
    :goto_67
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_51

    .line 74
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 76
    if-eqz v0, :cond_82

    if-eqz v1, :cond_82

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_5c .. :try_end_82} :catch_38

    .line 73
    :cond_82
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_67
.end method

.method private static rowOf(Landroid/view/View;)Landroid/view/View;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 138
    .line 139
    const/4 v0, 0x0

    move v3, v0

    move-object v2, p0

    :goto_4
    const/16 v0, 0x8

    if-ge v3, v0, :cond_30

    if-eqz v2, :cond_30

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 141
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-nez v4, :cond_14

    move-object v0, v1

    .line 150
    :goto_13
    return-object v0

    .line 144
    :cond_14
    instance-of v4, v0, Landroid/widget/AbsListView;

    if-nez v4, :cond_28

    .line 145
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

    .line 146
    goto :goto_13

    .line 148
    :cond_2a
    check-cast v0, Landroid/view/View;

    .line 139
    add-int/lit8 v3, v3, 0x1

    move-object v2, v0

    goto :goto_4

    :cond_30
    move-object v0, v1

    .line 150
    goto :goto_13
.end method

.method private static sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V
    .registers 8

    .prologue
    .line 176
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u0410\u0412\u0422\u041e"

    const-string v3, "AUTO"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/ai/AiText;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_a1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_32
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 178
    if-nez v0, :cond_a4

    .line 179
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 180
    const/high16 v0, 0x41500000    # 13.0f

    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    const/4 v4, 0x1

    invoke-static {v2, v1, v0, v3, v4}, Lcom/isaigu/gymapp/widget/XemsUi;->text(Landroid/content/Context;Ljava/lang/String;FIZ)Landroid/widget/TextView;

    move-result-object v0

    .line 181
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 182
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 183
    const/high16 v1, 0x41000000    # 8.0f

    invoke-static {v2, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    .line 184
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 185
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

    .line 186
    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->alpha(II)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v2, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v5

    .line 185
    invoke-static {v1, v3, v4, v5}, Lcom/isaigu/gymapp/widget/XemsUi;->rounded(IFII)Landroid/graphics/drawable/GradientDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 187
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v1, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 189
    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v2

    .line 190
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 191
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoLook;->SIGNS:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    :cond_97
    :goto_97
    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_a0

    .line 198
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 200
    :cond_a0
    return-void

    .line 177
    :cond_a1
    const-string v1, ""

    goto :goto_32

    .line 193
    :cond_a4
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_97

    .line 194
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_97
.end method

.method private static walk(Landroid/view/View;Ljava/lang/String;)V
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 109
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-nez v0, :cond_6

    .line 134
    :cond_5
    :goto_5
    return-void

    .line 112
    :cond_6
    check-cast p0, Landroid/view/ViewGroup;

    move v0, v1

    move v2, v1

    .line 114
    :goto_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v0, v3, :cond_29

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 116
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v4

    sget-object v5, Lcom/isaigu/gymapp/ai/AutoLook;->modeIds:[I

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/ai/AutoLook;->in(I[I)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 117
    const/16 v2, 0x8

    invoke-static {v3, v2}, Lcom/isaigu/gymapp/ai/AutoLook;->hide(Landroid/view/View;I)V

    .line 118
    const/4 v2, 0x1

    .line 114
    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 121
    :cond_29
    if-eqz v2, :cond_3f

    .line 122
    instance-of v0, p0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_35

    move-object v0, p0

    .line 123
    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->sign(Landroid/widget/LinearLayout;Ljava/lang/String;)V

    .line 125
    :cond_35
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AutoLook;->rowOf(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_5

    .line 127
    invoke-static {v0}, Lcom/isaigu/gymapp/ai/AutoLook;->hideIn(Landroid/view/View;)V

    goto :goto_5

    .line 131
    :cond_3f
    :goto_3f
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 132
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/ai/AutoLook;->walk(Landroid/view/View;Ljava/lang/String;)V

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_3f
.end method
