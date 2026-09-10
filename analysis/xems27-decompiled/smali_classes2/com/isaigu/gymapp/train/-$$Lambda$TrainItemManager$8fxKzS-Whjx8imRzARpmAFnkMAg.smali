.class public final synthetic Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;

    invoke-direct {v0}, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;->INSTANCE:Lcom/isaigu/gymapp/train/-$$Lambda$TrainItemManager$8fxKzS-Whjx8imRzARpmAFnkMAg;

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

    invoke-static {p1}, Lcom/isaigu/gymapp/train/TrainItemManager;->lambda$disConnected$1(Lcom/isaigu/gymapp/train/model/TrainItem;)V

    return-void
.end method
