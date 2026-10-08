.class public final Lcom/isaigu/gymapp/wearable/SuitReconnect;
.super Ljava/lang/Object;
.source "SuitReconnect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;,
        Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;,
        Lcom/isaigu/gymapp/wearable/SuitReconnect$Tick;,
        Lcom/isaigu/gymapp/wearable/SuitReconnect$Gatt;,
        Lcom/isaigu/gymapp/wearable/SuitReconnect$Back;
    }
.end annotation


# static fields
.field static final ATTEMPT_MS:J = 0x4e20L

.field private static final BANNERS:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;",
            ">;"
        }
    .end annotation
.end field

.field static final DONE_SHOW_MS:J = 0xfa0L

.field static final GIVE_UP_MS:J = 0x493e0L

.field private static final LOST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;",
            ">;"
        }
    .end annotation
.end field

.field static final RETRY_MS:J = 0xfa0L

.field private static anyRow:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final handler:Landroid/os/Handler;

.field private static manager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/isaigu/gymapp/train/TrainItemManager;",
            ">;"
        }
    .end annotation
.end field

.field private static ticking:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->handler:Landroid/os/Handler;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->BANNERS:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .registers 1

    .prologue
    .line 50
    sput-boolean p0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->ticking:Z

    return p0
.end method

.method static synthetic access$100()Ljava/util/List;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200()V
    .registers 0

    .prologue
    .line 50
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->tick()V

    return-void
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .registers 1

    .prologue
    .line 50
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 50
    invoke-static {p0, p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->tip(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static drop(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 3

    .prologue
    .line 327
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->find(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    move-result-object v0

    .line 328
    if-eqz v0, :cond_b

    .line 329
    sget-object v1, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 331
    :cond_b
    return-void
.end method

.method private static find(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;
    .registers 3

    .prologue
    .line 318
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_23

    .line 319
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    if-ne v0, p0, :cond_1f

    .line 320
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    .line 323
    :goto_1e
    return-object v0

    .line 318
    :cond_1f
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 323
    :cond_23
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method private static giveUp(Lcom/isaigu/gymapp/train/model/TrainItem;)V
    .registers 4

    .prologue
    .line 236
    const-string v1, "suit"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gave up "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v0, :cond_66

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    :goto_15
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u043d\u0430 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u043d\u0435 \u0441\u0435 \u0432\u044a\u0440\u043d\u0430 \u2014 \u0440\u0435\u0434\u044a\u0442 \u0435 \u0437\u0430\u0442\u0432\u043e\u0440\u0435\u043d"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The suit of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 238
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " did not come back \u2014 row closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 237
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->tip(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    .line 240
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/model/TrainItem;->close()V

    .line 241
    return-void

    .line 236
    :cond_66
    const-string v0, "?"

    goto :goto_15
.end method

.method public static lost(Lcom/isaigu/gymapp/train/TrainItemManager;Ljava/lang/String;)Z
    .registers 10

    .prologue
    const/4 v2, 0x0

    .line 89
    if-eqz p0, :cond_5

    if-nez p1, :cond_7

    :cond_5
    move v1, v2

    .line 121
    :cond_6
    :goto_6
    return v1

    .line 92
    :cond_7
    :try_start_7
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->manager:Ljava/lang/ref/WeakReference;

    .line 93
    invoke-virtual {p0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v4

    .line 94
    if-nez v4, :cond_16

    move v1, v2

    .line 95
    goto :goto_6

    :cond_16
    move v3, v2

    move v1, v2

    .line 98
    :goto_18
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_c6

    .line 99
    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 100
    if-eqz v0, :cond_c3

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_c3

    iget-object v5, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v5, :cond_c3

    iget-object v5, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v5, :cond_c3

    iget-object v5, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v5, v5, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_45

    move v0, v1

    .line 98
    :goto_41
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_18

    .line 104
    :cond_45
    iget v5, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    if-gtz v5, :cond_4b

    move v0, v1

    .line 105
    goto :goto_41

    .line 107
    :cond_4b
    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsHold()V

    .line 108
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->drop(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    .line 109
    sget-object v1, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    new-instance v5, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    invoke-direct {v5, v0, p1}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;-><init>(Lcom/isaigu/gymapp/train/model/TrainItem;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    const/4 v1, 0x1

    .line 111
    const-string v5, "suit"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lost "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/isaigu/gymapp/train/model/TrainItem;->workLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " s left \u2014 reconnecting"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u0441 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u043d\u0430 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430 \u2014 \u0441\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u043e\u0442\u043d\u043e\u0432\u043e\u2026"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Suit link lost for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 113
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " \u2014 reconnecting\u2026"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 112
    invoke-static {v5, v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->tip(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c3
    move v0, v1

    goto/16 :goto_41

    .line 115
    :cond_c6
    if-eqz v1, :cond_6

    .line 116
    invoke-static {}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->tick()V
    :try_end_cb
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_cb} :catch_cd

    goto/16 :goto_6

    .line 119
    :catch_cd
    move-exception v0

    .line 120
    const-string v1, "suit"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lost: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 121
    goto/16 :goto_6
.end method

.method public static mark(Lcom/isaigu/gymapp/train/model/TrainItem;Landroid/view/View;)V
    .registers 14

    .prologue
    .line 128
    if-nez p1, :cond_3

    .line 160
    :cond_2
    :goto_2
    return-void

    .line 131
    :cond_3
    :try_start_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->anyRow:Ljava/lang/ref/WeakReference;

    .line 132
    invoke-static {p0}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->find(Lcom/isaigu/gymapp/train/model/TrainItem;)Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    move-result-object v1

    .line 133
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->BANNERS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;

    .line 134
    if-nez v1, :cond_41

    .line 135
    if-eqz v0, :cond_2

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewOverlay;->remove(Landroid/graphics/drawable/Drawable;)V

    .line 137
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->BANNERS:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_26} :catch_27

    goto :goto_2

    .line 157
    :catch_27
    move-exception v0

    .line 158
    const-string v1, "suit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mark: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 141
    :cond_41
    if-nez v0, :cond_5e

    .line 142
    :try_start_43
    new-instance v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    invoke-direct {v0, v2}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;-><init>(F)V

    .line 143
    sget-object v2, Lcom/isaigu/gymapp/wearable/SuitReconnect;->BANNERS:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p1}, Landroid/view/View;->getOverlay()Landroid/view/ViewOverlay;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewOverlay;->add(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_5e
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->setBounds(IIII)V

    .line 147
    iget-wide v2, v1, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->doneAt:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_8c

    .line 148
    const/4 v1, 0x1

    const-string v2, "\u2713 \u041a\u043e\u0441\u0442\u044e\u043c\u044a\u0442 \u0435 \u0441\u0432\u044a\u0440\u0437\u0430\u043d \u043e\u0442\u043d\u043e\u0432\u043e"

    const-string v3, "\u2713 Suit connected again"

    invoke-static {v2, v3}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u041d\u0430\u0442\u0438\u0441\u043d\u0438 \u25b6 \u2014 \u043f\u0440\u043e\u0434\u044a\u043b\u0436\u0430\u0432\u0430 \u043e\u0442 \u0442\u0430\u043c, \u043a\u044a\u0434\u0435\u0442\u043e \u0441\u043f\u0440\u044f"

    const-string v4, "Tap \u25b6 \u2014 it goes on from where it stopped"

    .line 149
    invoke-static {v3, v4}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->set(ZLjava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_87
    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->invalidateSelf()V

    goto/16 :goto_2

    .line 151
    :cond_8c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->since:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 152
    const/4 v1, 0x0

    const-string v4, "\u0412\u0440\u044a\u0437\u043a\u0430\u0442\u0430 \u0441 \u043a\u043e\u0441\u0442\u044e\u043c\u0430 \u043f\u0440\u0435\u043a\u044a\u0441\u043d\u0430"

    const-string v5, "Suit link lost"

    invoke-static {v4, v5}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u0421\u0432\u044a\u0440\u0437\u0432\u0430\u043c \u043e\u0442\u043d\u043e\u0432\u043e\u2026  "

    const-string v7, "Reconnecting\u2026  "

    .line 153
    invoke-static {v6, v7}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "%d:%02d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-wide/16 v10, 0x3c

    div-long v10, v2, v10

    .line 154
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    const-wide/16 v10, 0x3c

    rem-long/2addr v2, v10

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v8, v9

    invoke-static {v6, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 152
    invoke-virtual {v0, v1, v4, v2}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Banner;->set(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_db
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_db} :catch_27

    goto :goto_87
.end method

.method static step()V
    .registers 16

    .prologue
    const-wide/16 v14, 0xfa0

    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 189
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->manager:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5b

    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->manager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/train/TrainItemManager;

    .line 190
    :goto_15
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/isaigu/gymapp/train/TrainItemManager;->getItemList()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    .line 191
    :cond_1c
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v5, v0

    :goto_25
    if-ltz v5, :cond_f5

    .line 192
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;

    .line 193
    iget-object v8, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->item:Lcom/isaigu/gymapp/train/model/TrainItem;

    .line 194
    if-eqz v1, :cond_4f

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    invoke-virtual {v8}, Lcom/isaigu/gymapp/train/model/TrainItem;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4f

    iget-object v2, v8, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    if-eqz v2, :cond_4f

    iget-object v2, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->mac:Ljava/lang/String;

    iget-object v9, v8, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v9, v9, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->macAddress:Ljava/lang/String;

    .line 195
    invoke-virtual {v2, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5d

    :cond_4f
    move v2, v4

    .line 196
    :goto_50
    if-eqz v2, :cond_5f

    .line 197
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 191
    :goto_57
    add-int/lit8 v0, v5, -0x1

    move v5, v0

    goto :goto_25

    :cond_5b
    move-object v0, v1

    .line 189
    goto :goto_15

    :cond_5d
    move v2, v3

    .line 195
    goto :goto_50

    .line 200
    :cond_5f
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->doneAt:J

    const-wide/16 v12, 0x0

    cmp-long v2, v10, v12

    if-lez v2, :cond_78

    .line 201
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->doneAt:J

    sub-long v10, v6, v10

    cmp-long v0, v10, v14

    if-lez v0, :cond_74

    .line 202
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 204
    :cond_74
    invoke-virtual {v8}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V

    goto :goto_57

    .line 207
    :cond_78
    iget-object v2, v8, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-boolean v2, v2, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->connected:Z

    if-eqz v2, :cond_87

    .line 208
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 209
    invoke-virtual {v8}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V

    goto :goto_57

    .line 212
    :cond_87
    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->since:J

    sub-long v10, v6, v10

    const-wide/32 v12, 0x493e0

    cmp-long v2, v10, v12

    if-lez v2, :cond_9b

    .line 213
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->LOST:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 214
    invoke-static {v8}, Lcom/isaigu/gymapp/wearable/SuitReconnect;->giveUp(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    goto :goto_57

    .line 217
    :cond_9b
    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->connecting:Z

    if-eqz v2, :cond_ab

    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->attemptAt:J

    sub-long v10, v6, v10

    const-wide/16 v12, 0x4e20

    cmp-long v2, v10, v12

    if-lez v2, :cond_ab

    .line 218
    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->connecting:Z

    .line 220
    :cond_ab
    iget-boolean v2, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->connecting:Z

    if-nez v2, :cond_c9

    iget-wide v10, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->attemptAt:J

    sub-long v10, v6, v10

    cmp-long v2, v10, v14

    if-ltz v2, :cond_c9

    .line 221
    iput-boolean v4, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->connecting:Z

    .line 222
    iput-wide v6, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->attemptAt:J

    .line 224
    :try_start_bb
    invoke-static {}, Lcom/clj/fastble/BleManager;->getInstance()Lcom/clj/fastble/BleManager;

    move-result-object v2

    iget-object v9, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->mac:Ljava/lang/String;

    new-instance v10, Lcom/isaigu/gymapp/wearable/SuitReconnect$Gatt;

    invoke-direct {v10, v0}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Gatt;-><init>(Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;)V

    invoke-virtual {v2, v9, v10}, Lcom/clj/fastble/BleManager;->connect(Ljava/lang/String;Lcom/clj/fastble/callback/BleGattCallback;)Landroid/bluetooth/BluetoothGatt;
    :try_end_c9
    .catch Ljava/lang/Throwable; {:try_start_bb .. :try_end_c9} :catch_cd

    .line 230
    :cond_c9
    :goto_c9
    invoke-virtual {v8}, Lcom/isaigu/gymapp/train/model/TrainItem;->xemsRefresh()V

    goto :goto_57

    .line 225
    :catch_cd
    move-exception v2

    .line 226
    iput-boolean v3, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->connecting:Z

    .line 227
    const-string v9, "suit"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "connect "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/SuitReconnect$Lost;->mac:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ": "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c9

    .line 232
    :cond_f5
    return-void
.end method

.method private static tick()V
    .registers 4

    .prologue
    .line 165
    sget-boolean v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->ticking:Z

    if-eqz v0, :cond_5

    .line 170
    :goto_4
    return-void

    .line 168
    :cond_5
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->ticking:Z

    .line 169
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/SuitReconnect$Tick;

    invoke-direct {v1}, Lcom/isaigu/gymapp/wearable/SuitReconnect$Tick;-><init>()V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4
.end method

.method private static tip(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 346
    :try_start_1
    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->anyRow:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_22

    sget-object v0, Lcom/isaigu/gymapp/wearable/SuitReconnect;->anyRow:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 347
    :goto_d
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 348
    :goto_13
    instance-of v1, v0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_26

    instance-of v1, v0, Landroid/app/Activity;

    if-nez v1, :cond_26

    .line 349
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_13

    :cond_22
    move-object v0, v1

    .line 346
    goto :goto_d

    :cond_24
    move-object v0, v1

    .line 347
    goto :goto_13

    .line 351
    :cond_26
    instance-of v1, v0, Lcom/isaigu/gymapp/BaseActivity;

    if-eqz v1, :cond_33

    .line 352
    check-cast v0, Lcom/isaigu/gymapp/BaseActivity;

    invoke-static {p0, p1}, Lcom/isaigu/gymapp/widget/XemsLang;->tr(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/BaseActivity;->showTips(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_33} :catch_34

    .line 356
    :cond_33
    :goto_33
    return-void

    .line 354
    :catch_34
    move-exception v0

    goto :goto_33
.end method

.method private static who(Lcom/isaigu/gymapp/train/model/TrainItem;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 336
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->trainUser:Lcom/isaigu/gymapp/bean/TrainUser;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUser;->name:Ljava/lang/String;

    .line 340
    :goto_14
    return-object v0

    .line 338
    :cond_15
    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/isaigu/gymapp/train/model/TrainItem;->data:Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;

    iget-object v0, v0, Lcom/isaigu/gymapp/bean/TrainUserProgramDataWrapper;->deviceName:Ljava/lang/String;

    goto :goto_14

    :cond_20
    const-string v0, ""
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_14

    .line 339
    :catch_23
    move-exception v0

    .line 340
    const-string v0, ""

    goto :goto_14
.end method
