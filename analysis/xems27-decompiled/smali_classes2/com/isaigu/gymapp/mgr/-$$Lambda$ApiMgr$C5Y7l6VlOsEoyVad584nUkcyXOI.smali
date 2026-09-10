.class public final synthetic Lcom/isaigu/gymapp/mgr/-$$Lambda$ApiMgr$C5Y7l6VlOsEoyVad584nUkcyXOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/isaigu/gymapp/mgr/-$$Lambda$ApiMgr$C5Y7l6VlOsEoyVad584nUkcyXOI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/isaigu/gymapp/mgr/-$$Lambda$ApiMgr$C5Y7l6VlOsEoyVad584nUkcyXOI;

    invoke-direct {v0}, Lcom/isaigu/gymapp/mgr/-$$Lambda$ApiMgr$C5Y7l6VlOsEoyVad584nUkcyXOI;-><init>()V

    sput-object v0, Lcom/isaigu/gymapp/mgr/-$$Lambda$ApiMgr$C5Y7l6VlOsEoyVad584nUkcyXOI;->INSTANCE:Lcom/isaigu/gymapp/mgr/-$$Lambda$ApiMgr$C5Y7l6VlOsEoyVad584nUkcyXOI;

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

    check-cast p1, Lcom/isaigu/gymapp/bean/TrainProgram;

    invoke-static {p1}, Lcom/isaigu/gymapp/mgr/ApiMgr;->lambda$updateProgramTrainDataList$0(Lcom/isaigu/gymapp/bean/TrainProgram;)V

    return-void
.end method
