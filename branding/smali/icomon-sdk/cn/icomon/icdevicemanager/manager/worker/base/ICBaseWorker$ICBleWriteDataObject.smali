.class public Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;
.super Ljava/lang/Object;
.source "ICBaseWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ICBleWriteDataObject"
.end annotation


# instance fields
.field public character:Ljava/lang/String;

.field public datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public eventId:Ljava/lang/Integer;

.field public service:Ljava/lang/String;

.field public tag:Ljava/lang/Integer;

.field final synthetic this$0:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;


# direct methods
.method public constructor <init>(Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker$ICBleWriteDataObject;->this$0:Lcn/icomon/icdevicemanager/manager/worker/base/ICBaseWorker;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
