.class Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;
.super Ljava/lang/Object;
.source "ICWeightScaleV3Worker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ICWeightScaleV3WorkerFileInfo"
.end annotation


# instance fields
.field public cs:I

.field public curSendFrameCount:I

.field public curSendIndex:I

.field public eventId:I

.field public fileData:[B

.field public frameDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public isReady:Z

.field public isStart:Z

.field public maxFrameLength:I

.field public nickNameCS:I

.field public packageFrameCount:I

.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

.field public type:I

.field public userId:I


# direct methods
.method public constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker$ICWeightScaleV3WorkerFileInfo;->this$0:Lcn/icomon/icdevicemanager/manager/worker/scale/ICWeightScaleV3Worker;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
