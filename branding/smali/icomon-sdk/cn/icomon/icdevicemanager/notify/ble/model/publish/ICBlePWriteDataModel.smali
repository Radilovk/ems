.class public Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;
.super Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;
.source "ICBlePWriteDataModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;
    }
.end annotation


# instance fields
.field public characteristic:Ljava/lang/String;

.field public data:[B

.field public service:Ljava/lang/String;

.field public time:I

.field public type:Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel$ICBlePWriteDataType;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 8
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePWriteDataModel;->time:I

    return-void
.end method
