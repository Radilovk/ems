.class public Lcn/icomon/icdevicemanager/manager/ble/ICBleAppBroadcastData;
.super Ljava/lang/Object;
.source "ICBleAppBroadcastData.java"


# instance fields
.field public data:[B

.field public startTime:I

.field public time:I

.field public uuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
