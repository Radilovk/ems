.class Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;
.super Ljava/lang/Object;
.source "ICBaseSTOTAWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ICWriteDataObject"
.end annotation


# instance fields
.field datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field delay:I

.field type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

.field writeIndex:I


# direct methods
.method constructor <init>()V
    .registers 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljava/util/List;ILcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;)Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I",
            "Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;",
            ")",
            "Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;"
        }
    .end annotation

    .line 60
    new-instance v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;->writeIndex:I

    iput-object p0, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;->datas:Ljava/util/List;

    iput p1, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;->delay:I

    iput-object p2, v0, Lcn/icomon/icdevicemanager/manager/worker/ota/ICBaseSTOTAWorker$ICWriteDataObject;->type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;

    return-object v0
.end method
