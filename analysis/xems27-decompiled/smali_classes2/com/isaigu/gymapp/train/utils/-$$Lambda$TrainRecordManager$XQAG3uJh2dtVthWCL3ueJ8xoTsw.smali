.class public final synthetic Lcom/isaigu/gymapp/train/utils/-$$Lambda$TrainRecordManager$XQAG3uJh2dtVthWCL3ueJ8xoTsw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/isaigu/gymapp/train/utils/TrainRecordManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$TrainRecordManager$XQAG3uJh2dtVthWCL3ueJ8xoTsw;->f$0:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iput-object p2, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$TrainRecordManager$XQAG3uJh2dtVthWCL3ueJ8xoTsw;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$TrainRecordManager$XQAG3uJh2dtVthWCL3ueJ8xoTsw;->f$0:Lcom/isaigu/gymapp/train/utils/TrainRecordManager;

    iget-object v1, p0, Lcom/isaigu/gymapp/train/utils/-$$Lambda$TrainRecordManager$XQAG3uJh2dtVthWCL3ueJ8xoTsw;->f$1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/isaigu/gymapp/train/utils/TrainRecordManager;->lambda$saveTrainRecord$0$TrainRecordManager(Ljava/lang/String;)V

    return-void
.end method
