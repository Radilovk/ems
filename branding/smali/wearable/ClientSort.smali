.class public final Lcom/isaigu/gymapp/wearable/ClientSort;
.super Ljava/lang/Object;
.source "ClientSort.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/ClientSort$Order;,
        Lcom/isaigu/gymapp/wearable/ClientSort$Place;,
        Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;,
        Lcom/isaigu/gymapp/wearable/ClientSort$Reset;,
        Lcom/isaigu/gymapp/wearable/ClientSort$Done;,
        Lcom/isaigu/gymapp/wearable/ClientSort$Pick;,
        Lcom/isaigu/gymapp/wearable/ClientSort$Open;
    }
.end annotation


# static fields
.field static final BAR_TAG:Ljava/lang/String; = "xems_client_sort"

.field static final DAY:J = 0x5265c00L

.field private static final FULL:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final PREFS:Ljava/lang/String; = "xems_client_view"

.field static final SORT_LAST:I = 0x1

.field static final SORT_MOST:I = 0x2

.field static final SORT_NAME:I = 0x0

.field static final SORT_NEW:I = 0x3

.field private static keepId:J

.field private static stat:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation
.end field

.field private static statAt:J


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const-wide/16 v2, -0x1

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ClientSort;->FULL:Ljava/util/Map;

    .line 68
    sput-wide v2, Lcom/isaigu/gymapp/wearable/ClientSort;->keepId:J

    .line 70
    sput-wide v2, Lcom/isaigu/gymapp/wearable/ClientSort;->statAt:J

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/ClientSort;->stat:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bar(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 341
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->bar(Landroid/view/View;Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public static bar(Landroid/view/View;Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 346
    instance-of v0, p0, Landroid/widget/EditText;

    if-eqz v0, :cond_f

    .line 347
    new-instance v1, Lcom/isaigu/gymapp/wearable/ClientSort$Place;

    move-object v0, p0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {v1, v0, p1}, Lcom/isaigu/gymapp/wearable/ClientSort$Place;-><init>(Landroid/widget/EditText;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_f
    return-void
.end method

.method static busy()Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 269
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 271
    :try_start_7
    invoke-static {}, Lcom/isaigu/gymapp/mgr/DataMgr;->getInstance()Lcom/isaigu/gymapp/mgr/DataMgr;

    move-result-object v0

    .line 272
    if-eqz v0, :cond_34

    iget-object v0, v0, Lcom/isaigu/gymapp/mgr/DataMgr;->trainingUsers:Ljava/util/List;

    move-object v1, v0

    :goto_10
    move v4, v3

    .line 273
    :goto_11
    if-eqz v1, :cond_37

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_37

    .line 274
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    .line 275
    if-eqz v0, :cond_30

    iget-object v6, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v6, :cond_30

    .line 276
    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_30} :catch_36

    .line 273
    :cond_30
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_11

    :cond_34
    move-object v1, v2

    .line 272
    goto :goto_10

    .line 279
    :catch_36
    move-exception v0

    .line 282
    :cond_37
    :try_start_37
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->getItemManager()Lcom/isaigu/gymapp/train/TrainItemManager;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_41

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v2

    :cond_41
    move v1, v3

    .line 284
    :goto_42
    if-eqz v2, :cond_74

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_74

    .line 285
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 286
    if-eqz v0, :cond_6f

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6f

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v3, :cond_6f

    iget-object v3, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v3, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v3, :cond_6f

    .line 287
    iget-object v0, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v6, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_6f} :catch_73

    .line 284
    :cond_6f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_42

    .line 290
    :catch_73
    move-exception v0

    .line 292
    :cond_74
    return-object v5
.end method

.method private static cast(Ljava/lang/Object;)Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 334
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private static editedUser(Ljava/lang/Object;)J
    .registers 8

    .prologue
    const-wide/16 v4, -0x1

    .line 298
    if-nez p0, :cond_6

    move-wide v2, v4

    .line 311
    :goto_5
    return-wide v2

    .line 301
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getArguments"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 302
    if-nez v2, :cond_20

    move-wide v2, v4

    .line 303
    goto :goto_5

    .line 305
    :cond_20
    const-string v3, "data"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v3

    .line 306
    instance-of v2, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_3a

    move-object v0, v3

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    move-object v2, v0

    iget-object v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v2, :cond_3a

    .line 307
    check-cast v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v2, v3, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-wide v2, v2, Lcom/isaigu/gymapp/bean/TrainUser;->id:J
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_38} :catch_39

    goto :goto_5

    .line 309
    :catch_39
    move-exception v2

    :cond_3a
    move-wide v2, v4

    .line 311
    goto :goto_5
.end method

.method private static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 315
    if-nez p0, :cond_4

    .line 329
    :cond_3
    :goto_3
    return-object v0

    .line 318
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_8
    if-eqz v1, :cond_3

    .line 320
    :try_start_a
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 321
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 322
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/NoSuchFieldException; {:try_start_a .. :try_end_15} :catch_17
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_15} :catch_1d

    move-result-object v0

    goto :goto_3

    .line 323
    :catch_17
    move-exception v2

    .line 318
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    .line 325
    :catch_1d
    move-exception v1

    goto :goto_3
.end method

.method static forPad(Ljava/util/List;Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    :try_start_0
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/ClientSort;->view(Ljava/util/List;Z)Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    .line 133
    :goto_4
    return-object v0

    .line 132
    :catch_5
    move-exception v0

    .line 133
    if-eqz p0, :cond_e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_4

    :cond_e
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4
.end method

.method static goalIndex(Lcom/isaigu/gymapp/bean/TrainUser;)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 183
    :try_start_1
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/AiProfile;->of(Lcom/isaigu/gymapp/bean/TrainUser;)Lcom/isaigu/gymapp/ai/AiProfile;

    move-result-object v1

    .line 184
    if-eqz v1, :cond_b

    iget-object v2, v1, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-nez v2, :cond_c

    .line 191
    :cond_b
    :goto_b
    return v0

    .line 187
    :cond_c
    iget-object v1, v1, Lcom/isaigu/gymapp/ai/AiProfile;->goal:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    .line 188
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->FAT:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v1, v2, :cond_14

    const/4 v0, 0x2

    goto :goto_b

    :cond_14
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->MASSAGE:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v1, v2, :cond_1a

    const/4 v0, 0x3

    goto :goto_b

    :cond_1a
    sget-object v2, Lcom/isaigu/gymapp/ai/AiModel$Goal;->DRAIN:Lcom/isaigu/gymapp/ai/AiModel$Goal;

    if-ne v1, v2, :cond_20

    const/4 v0, 0x4

    goto :goto_b

    .line 189
    :cond_20
    sget-object v0, Lcom/isaigu/gymapp/ai/AiModel$Goal;->CELLULITE:Lcom/isaigu/gymapp/ai/AiModel$Goal;
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_22} :catch_28

    if-ne v1, v0, :cond_26

    const/4 v0, 0x5

    goto :goto_b

    :cond_26
    const/4 v0, 0x1

    goto :goto_b

    .line 190
    :catch_28
    move-exception v1

    goto :goto_b
.end method

.method public static list(Ljava/util/List;)Ljava/util/List;
    .registers 3

    .prologue
    .line 84
    if-nez p0, :cond_4

    .line 85
    const/4 p0, 0x0

    .line 90
    :goto_3
    return-object p0

    .line 87
    :cond_4
    const/4 v0, 0x0

    :try_start_5
    invoke-static {p0, v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->view(Ljava/util/List;Z)Ljava/util/List;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_8} :catch_a

    move-result-object p0

    goto :goto_3

    .line 88
    :catch_a
    move-exception v0

    .line 89
    const-string v1, "ClientSort.list"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method static name(Lcom/isaigu/gymapp/bean/TrainUser;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 232
    :goto_12
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_18
    return-object v0

    .line 231
    :cond_19
    iget-object v0, p0, Lcom/isaigu/gymapp/bean/TrainUser;->nickName:Ljava/lang/String;

    goto :goto_12

    .line 232
    :cond_1c
    const-string v0, ""

    goto :goto_18
.end method

.method static paint(Landroid/widget/TextView;)V
    .registers 9

    .prologue
    const/high16 v7, 0x41600000    # 14.0f

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 408
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 409
    const-string v0, "xems_client_view"

    invoke-virtual {v4, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 410
    const-string v0, "sex"

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_9d

    move v0, v1

    :goto_17
    const-string v3, "act"

    invoke-interface {v5, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_a0

    move v3, v1

    :goto_20
    add-int/2addr v3, v0

    .line 411
    const-string v0, "goal"

    invoke-interface {v5, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_a3

    move v0, v1

    :goto_2a
    add-int/2addr v3, v0

    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u21c5  "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, "sort"

    invoke-interface {v5, v6, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v5}, Lcom/isaigu/gymapp/wearable/ClientSort;->sortShort(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-lez v3, :cond_a5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "  \u00b7 "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_59
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 413
    if-lez v3, :cond_a8

    .line 414
    :goto_63
    sget v3, Lcom/isaigu/gymapp/widget/XemsUi;->GO_TEXT:I

    invoke-static {v4, v0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->chip(Landroid/content/Context;Ljava/lang/String;ZI)Landroid/widget/TextView;

    move-result-object v1

    .line 415
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 416
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 417
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 418
    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 420
    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v0

    invoke-static {v4, v7}, Lcom/isaigu/gymapp/widget/XemsUi;->dp(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {p0, v0, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 421
    const-string v0, "\u041f\u043e\u0434\u0440\u0435\u0434\u0438 \u0438 \u0444\u0438\u043b\u0442\u0440\u0438\u0440\u0430\u0439 \u043a\u043b\u0438\u0435\u043d\u0442\u0438\u0442\u0435"

    const-string v1, "Sort and filter the clients"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 422
    return-void

    :cond_9d
    move v0, v2

    .line 410
    goto/16 :goto_17

    :cond_a0
    move v3, v2

    goto/16 :goto_20

    :cond_a3
    move v0, v2

    .line 411
    goto :goto_2a

    .line 412
    :cond_a5
    const-string v0, ""

    goto :goto_59

    :cond_a8
    move v1, v2

    .line 413
    goto :goto_63
.end method

.method public static pick(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 8

    .prologue
    const/4 v0, 0x0

    .line 100
    if-nez p1, :cond_5

    move-object p1, v0

    .line 124
    :goto_4
    return-object p1

    .line 103
    :cond_5
    :try_start_5
    const-string v1, "this$0"

    invoke-static {p0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->editedUser(Ljava/lang/Object;)J

    move-result-wide v4

    sput-wide v4, Lcom/isaigu/gymapp/wearable/ClientSort;->keepId:J

    .line 105
    if-eqz v2, :cond_49

    const-string v0, "trainUsers"

    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    .line 106
    :goto_1a
    if-ne v1, p1, :cond_63

    .line 107
    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientSort;->FULL:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 109
    if-eqz v0, :cond_4b

    const/4 v3, 0x0

    aget-object v3, v0, v3

    if-ne v3, v1, :cond_4b

    .line 110
    const/4 v1, 0x1

    aget-object v0, v0, v1

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->cast(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 115
    :goto_32
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->view(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientSort;->cast(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 117
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 118
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_41} :catch_42

    goto :goto_4

    .line 122
    :catch_42
    move-exception v0

    .line 123
    const-string v1, "ClientSort.pick"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_49
    move-object v1, v0

    .line 105
    goto :goto_1a

    .line 112
    :cond_4b
    :try_start_4b
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/ClientSort;->cast(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 113
    sget-object v3, Lcom/isaigu/gymapp/wearable/ClientSort;->FULL:Ljava/util/Map;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v1, 0x1

    aput-object v0, v4, v1

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_32

    .line 121
    :cond_63
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->view(Ljava/util/List;Z)Ljava/util/List;
    :try_end_67
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_67} :catch_42

    move-result-object p1

    goto :goto_4
.end method

.method static refresh(Landroid/widget/EditText;Ljava/lang/Object;)V
    .registers 5

    .prologue
    .line 594
    if-eqz p1, :cond_4b

    :try_start_2
    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientSort;->FULL:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 595
    :goto_a
    if-eqz v0, :cond_32

    const/4 v1, 0x0

    aget-object v1, v0, v1

    instance-of v1, v1, Ljava/util/List;

    if-eqz v1, :cond_32

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const-string v2, "trainUsers"

    invoke-static {p1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_32

    .line 596
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->cast(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 597
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 598
    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->cast(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 600
    :cond_32
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 601
    if-eqz v0, :cond_4d

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 606
    :goto_4a
    return-void

    .line 594
    :cond_4b
    const/4 v0, 0x0

    goto :goto_a

    .line 601
    :cond_4d
    const-string v0, ""
    :try_end_4f
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_4f} :catch_50

    goto :goto_3c

    .line 603
    :catch_50
    move-exception v0

    .line 604
    const-string v1, "ClientSort.refresh"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4a
.end method

.method static sheet(Landroid/app/Activity;Landroid/widget/EditText;Ljava/lang/Object;Landroid/widget/TextView;)V
    .registers 10

    .prologue
    .line 454
    :try_start_0
    const-string v0, "\u041f\u043e\u0434\u0440\u0435\u0434\u0438 \u0438 \u0444\u0438\u043b\u0442\u0440\u0438\u0440\u0430\u0439"

    const-string v1, "Sort and filter"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u0412\u0430\u0436\u0438 \u0438 \u0437\u0430 \u0441\u043f\u0438\u0441\u044a\u043a\u0430 \u0441 \u043a\u043b\u0438\u0435\u043d\u0442\u0438, \u0438 \u0437\u0430 \u0438\u0437\u0431\u043e\u0440\u0430 \u043f\u0440\u0435\u0434\u0438 \u0442\u0440\u0435\u043d\u0438\u0440\u043e\u0432\u043a\u0430"

    const-string v2, "Applies to the client list and to the picker before a training"

    .line 455
    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2f8

    .line 454
    invoke-static {p0, v0, v1, v2}, Lcom/isaigu/gymapp/widget/XemsUi;->shell(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;I)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v2

    .line 457
    new-instance v0, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;-><init>(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;Landroid/widget/EditText;Ljava/lang/Object;Landroid/widget/TextView;)V

    .line 458
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;->build()V

    .line 459
    const-string v1, "\u0418\u0437\u0447\u0438\u0441\u0442\u0438"

    const-string v3, "Reset"

    invoke-static {v1, v3}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x3

    invoke-static {p0, v1, v3}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v1

    .line 460
    new-instance v3, Lcom/isaigu/gymapp/wearable/ClientSort$Reset;

    invoke-direct {v3, v0}, Lcom/isaigu/gymapp/wearable/ClientSort$Reset;-><init>(Lcom/isaigu/gymapp/wearable/ClientSort$Sheet;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 461
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 462
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-static {p0}, Lcom/isaigu/gymapp/widget/XemsUi;->spacer(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 463
    const-string v0, "\u0413\u043e\u0442\u043e\u0432\u043e"

    const-string v1, "Done"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->button(Landroid/content/Context;Ljava/lang/String;I)Landroid/widget/TextView;

    move-result-object v0

    .line 464
    new-instance v1, Lcom/isaigu/gymapp/wearable/ClientSort$Done;

    invoke-direct {v1, v2}, Lcom/isaigu/gymapp/wearable/ClientSort$Done;-><init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 465
    iget-object v1, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->footer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 466
    const v0, 0x3f6b851f    # 0.92f

    invoke-static {p0, v2, v0}, Lcom/isaigu/gymapp/widget/XemsUi;->fitHeight(Landroid/app/Activity;Lcom/isaigu/gymapp/widget/XemsUi$Shell;F)V

    .line 467
    iget-object v0, v2, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_6a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_6a} :catch_6b

    .line 471
    :goto_6a
    return-void

    .line 468
    :catch_6b
    move-exception v0

    .line 469
    const-string v1, "ClientSort.sheet"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6a
.end method

.method static sortShort(I)Ljava/lang/String;
    .registers 3

    .prologue
    .line 425
    packed-switch p0, :pswitch_data_28

    .line 429
    const-string v0, "\u0410\u2013\u042f"

    const-string v1, "A\u2013Z"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_b
    return-object v0

    .line 426
    :pswitch_c
    const-string v0, "\u041f\u043e\u0441\u043b\u0435\u0434\u043d\u0430"

    const-string v1, "Last"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 427
    :pswitch_15
    const-string v0, "\u041d\u0430\u0439-\u0440\u0435\u0434\u043e\u0432\u043d\u0438"

    const-string v1, "Most"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 428
    :pswitch_1e
    const-string v0, "\u041d\u043e\u0432\u0438"

    const-string v1, "Newest"

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/ClientSort;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    .line 425
    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_c
        :pswitch_15
        :pswitch_1e
    .end packed-switch
.end method

.method static declared-synchronized stats(Landroid/content/Context;)Ljava/util/Map;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "[J>;"
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    const/4 v0, 0x0

    .line 238
    const-class v4, Lcom/isaigu/gymapp/wearable/ClientSort;

    monitor-enter v4

    :try_start_6
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->dir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v5

    const-string v6, "index.json"

    invoke-direct {v1, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    xor-long/2addr v2, v6

    .line 240
    :cond_20
    sget-wide v6, Lcom/isaigu/gymapp/wearable/ClientSort;->statAt:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_2a

    .line 241
    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientSort;->stat:Ljava/util/Map;
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_28} :catch_7d
    .catchall {:try_start_6 .. :try_end_28} :catchall_86

    .line 264
    :goto_28
    monitor-exit v4

    return-object v0

    .line 243
    :cond_2a
    :try_start_2a
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 244
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SessionStore;->index(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v6

    move v1, v0

    .line 245
    :goto_34
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v1, v0, :cond_81

    .line 246
    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 247
    if-nez v0, :cond_44

    .line 245
    :goto_40
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_34

    .line 250
    :cond_44
    const-string v7, "userId"

    const-wide/16 v8, -0x1

    invoke-virtual {v0, v7, v8, v9}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 251
    const-string v7, "start"

    const-wide/16 v10, 0x0

    invoke-virtual {v0, v7, v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v10

    .line 252
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 253
    if-nez v0, :cond_6a

    .line 254
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 255
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v5, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    :cond_6a
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget-wide v8, v0, v8

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    aput-wide v8, v0, v7

    .line 258
    const/4 v7, 0x1

    aget-wide v8, v0, v7

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    aput-wide v8, v0, v7
    :try_end_7c
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_7c} :catch_7d
    .catchall {:try_start_2a .. :try_end_7c} :catchall_86

    goto :goto_40

    .line 262
    :catch_7d
    move-exception v0

    .line 264
    :goto_7e
    :try_start_7e
    sget-object v0, Lcom/isaigu/gymapp/wearable/ClientSort;->stat:Ljava/util/Map;
    :try_end_80
    .catchall {:try_start_7e .. :try_end_80} :catchall_86

    goto :goto_28

    .line 260
    :cond_81
    :try_start_81
    sput-object v5, Lcom/isaigu/gymapp/wearable/ClientSort;->stat:Ljava/util/Map;

    .line 261
    sput-wide v2, Lcom/isaigu/gymapp/wearable/ClientSort;->statAt:J
    :try_end_85
    .catch Ljava/lang/Throwable; {:try_start_81 .. :try_end_85} :catch_7d
    .catchall {:try_start_81 .. :try_end_85} :catchall_86

    goto :goto_7e

    .line 238
    :catchall_86
    move-exception v0

    monitor-exit v4

    throw v0
.end method

.method static tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 76
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static view(Ljava/util/List;Z)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/bean/TrainUser;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    invoke-static/range {p0 .. p0}, Lcom/isaigu/gymapp/wearable/ClientSort;->cast(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    .line 141
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivityForPermissions()Landroid/app/Activity;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_6d

    const-string v0, "xems_client_view"

    const/4 v1, 0x0

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    move-object v1, v0

    .line 143
    :goto_12
    if-eqz v1, :cond_70

    const-string v0, "sort"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v10, v0

    .line 144
    :goto_1c
    if-eqz v1, :cond_73

    const-string v0, "sex"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v9, v0

    .line 145
    :goto_26
    if-eqz v1, :cond_76

    const-string v0, "act"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v8, v0

    .line 146
    :goto_30
    if-eqz v1, :cond_79

    const-string v0, "goal"

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    move v7, v0

    .line 147
    :goto_3a
    if-eqz p1, :cond_7c

    invoke-static {}, Lcom/isaigu/gymapp/wearable/ClientSort;->busy()Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    .line 148
    :goto_41
    if-eqz v2, :cond_7f

    if-nez v8, :cond_4b

    const/4 v0, 0x1

    if-eq v10, v0, :cond_4b

    const/4 v0, 0x2

    if-ne v10, v0, :cond_7f

    .line 149
    :cond_4b
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/ClientSort;->stats(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v0

    move-object v2, v0

    .line 150
    :goto_50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 151
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 152
    const/4 v0, 0x0

    move v3, v0

    :goto_5b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_fe

    .line 153
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/bean/TrainUser;

    .line 154
    if-nez v0, :cond_86

    .line 152
    :cond_69
    :goto_69
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5b

    .line 142
    :cond_6d
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_12

    .line 143
    :cond_70
    const/4 v0, 0x0

    move v10, v0

    goto :goto_1c

    .line 144
    :cond_73
    const/4 v0, 0x0

    move v9, v0

    goto :goto_26

    .line 145
    :cond_76
    const/4 v0, 0x0

    move v8, v0

    goto :goto_30

    .line 146
    :cond_79
    const/4 v0, 0x0

    move v7, v0

    goto :goto_3a

    .line 147
    :cond_7c
    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_41

    .line 149
    :cond_7f
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v2, v0

    goto :goto_50

    .line 157
    :cond_86
    if-eqz v6, :cond_9c

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9c

    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    sget-wide v16, Lcom/isaigu/gymapp/wearable/ClientSort;->keepId:J

    cmp-long v1, v4, v16

    if-nez v1, :cond_69

    .line 160
    :cond_9c
    const/4 v1, 0x1

    if-ne v9, v1, :cond_a5

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v4, Lcom/isaigu/gymapp/bean/Gender;->Female:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v1, v4, :cond_69

    :cond_a5
    const/4 v1, 0x2

    if-ne v9, v1, :cond_ae

    iget-object v1, v0, Lcom/isaigu/gymapp/bean/TrainUser;->gender:Lcom/isaigu/gymapp/bean/Gender;

    sget-object v4, Lcom/isaigu/gymapp/bean/Gender;->Male:Lcom/isaigu/gymapp/bean/Gender;

    if-ne v1, v4, :cond_69

    .line 163
    :cond_ae
    if-eqz v8, :cond_ec

    .line 164
    iget-wide v4, v0, Lcom/isaigu/gymapp/bean/TrainUser;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    .line 165
    if-eqz v1, :cond_f9

    const/4 v4, 0x0

    aget-wide v4, v1, v4

    .line 166
    :goto_c1
    const-wide/16 v16, 0x0

    cmp-long v1, v4, v16

    if-lez v1, :cond_fc

    sub-long v16, v12, v4

    const-wide v18, 0x9a7ec800L

    cmp-long v1, v16, v18

    if-gtz v1, :cond_fc

    const/4 v1, 0x1

    .line 167
    :goto_d3
    const/4 v15, 0x1

    if-ne v8, v15, :cond_d8

    if-eqz v1, :cond_69

    :cond_d8
    const/4 v15, 0x2

    if-ne v8, v15, :cond_e3

    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-lez v15, :cond_69

    if-nez v1, :cond_69

    :cond_e3
    const/4 v1, 0x3

    if-ne v8, v1, :cond_ec

    const-wide/16 v16, 0x0

    cmp-long v1, v4, v16

    if-gtz v1, :cond_69

    .line 171
    :cond_ec
    if-eqz v7, :cond_f4

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/ClientSort;->goalIndex(Lcom/isaigu/gymapp/bean/TrainUser;)I

    move-result v1

    if-ne v1, v7, :cond_69

    .line 174
    :cond_f4
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_69

    .line 165
    :cond_f9
    const-wide/16 v4, 0x0

    goto :goto_c1

    .line 166
    :cond_fc
    const/4 v1, 0x0

    goto :goto_d3

    .line 176
    :cond_fe
    new-instance v0, Lcom/isaigu/gymapp/wearable/ClientSort$Order;

    invoke-direct {v0, v10, v2}, Lcom/isaigu/gymapp/wearable/ClientSort$Order;-><init>(ILjava/util/Map;)V

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 177
    return-object v14
.end method
