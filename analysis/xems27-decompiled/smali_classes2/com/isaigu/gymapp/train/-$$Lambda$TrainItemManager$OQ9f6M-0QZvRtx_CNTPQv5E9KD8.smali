.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$OQ9f6M-0QZvRtx_CNTPQv5E9KD8;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/isaigu/gymapp/train/model/TrainItem;

    invoke-static {p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$resetAll$5(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method
