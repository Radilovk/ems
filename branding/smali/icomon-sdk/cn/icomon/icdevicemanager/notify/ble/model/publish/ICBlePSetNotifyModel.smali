.class public Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePSetNotifyModel;
.super Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;
.source "ICBlePSetNotifyModel.java"


# instance fields
.field public characteristic:Ljava/lang/String;

.field public enable:Z

.field public service:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcn/icomon/icdevicemanager/notify/ble/model/publish/ICBlePBaseModel;-><init>()V

    return-void
.end method
