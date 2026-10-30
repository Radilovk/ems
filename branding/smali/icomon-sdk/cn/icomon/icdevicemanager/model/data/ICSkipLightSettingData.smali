.class public Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;
.super Ljava/lang/Object;
.source "ICSkipLightSettingData.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;",
            ">;"
        }
    .end annotation
.end field

.field public mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;",
            ">;",
            "Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    iput-object p2, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;

    return-void
.end method


# virtual methods
.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    return-object v0
.end method

.method public getMode()Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;

    return-object v0
.end method

.method public setList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingParams;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    return-void
.end method

.method public setMode(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;)V
    .registers 2

    iput-object p1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ICSkipLightSettingData{list="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->list:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/icomon/icdevicemanager/model/data/ICSkipLightSettingData;->mode:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSkipLightMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
