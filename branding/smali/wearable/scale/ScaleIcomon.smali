.class public final Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;
.super Ljava/lang/Object;
.source "ScaleIcomon.java"

# interfaces
.implements Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;
.implements Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$Removed;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$Added;,
        Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;
    }
.end annotation


# static fields
.field static final FIRST_LINK_MS:J = 0x61a8L

.field static broken:Z

.field static initCalled:Z

.field static initOk:Z

.field static owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;


# instance fields
.field addToken:I

.field closed:Z

.field device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

.field everLinked:Z

.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

.field final logged:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field scanning:Z

.field final skipped:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V
    .registers 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->logged:Ljava/util/Set;

    .line 52
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->skipped:Ljava/util/Set;

    .line 60
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 61
    return-void
.end method

.method static log(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "iComon "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->log(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method static reading(DLjava/util/List;I)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;I)",
            "Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;"
        }
    .end annotation

    .prologue
    .line 300
    if-eqz p2, :cond_f

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_f

    const-wide/16 v2, 0x0

    cmpg-double v2, p0, v2

    if-gtz v2, :cond_11

    .line 301
    :cond_f
    const/4 v2, 0x0

    .line 336
    :goto_10
    return-object v2

    .line 303
    :cond_11
    const/4 v2, 0x5

    new-array v7, v2, [D

    .line 304
    const/4 v2, 0x5

    new-array v6, v2, [D

    .line 305
    const-wide/16 v10, 0x0

    const-wide/16 v4, 0x0

    .line 306
    const/4 v3, 0x0

    .line 307
    const/4 v2, 0x0

    move v8, v2

    :goto_1e
    const/4 v2, 0x5

    if-ge v8, v2, :cond_5c

    .line 308
    move-object/from16 v0, p2

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->val(Ljava/lang/Double;)D

    move-result-wide v12

    aput-wide v12, v7, v8

    .line 309
    aget-wide v12, v7, v8

    add-double/2addr v10, v12

    .line 310
    aget-wide v12, v7, v8

    const-wide/16 v14, 0x0

    cmpl-double v2, v12, v14

    if-lez v2, :cond_3d

    .line 311
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .line 313
    :cond_3d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v9, 0xa

    if-lt v2, v9, :cond_58

    .line 314
    add-int/lit8 v2, v8, 0x5

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Double;

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->val(Ljava/lang/Double;)D

    move-result-wide v12

    aput-wide v12, v6, v8

    .line 315
    aget-wide v12, v6, v8

    add-double/2addr v4, v12

    .line 307
    :cond_58
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_1e

    .line 318
    :cond_5c
    const/4 v2, 0x5

    if-ge v3, v2, :cond_61

    .line 319
    const/4 v2, 0x0

    goto :goto_10

    .line 321
    :cond_61
    new-instance v3, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    invoke-direct {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;-><init>()V

    .line 322
    move-wide/from16 v0, p0

    iput-wide v0, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->weightKg:D

    .line 323
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->result:Z

    .line 324
    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->stable:Z

    .line 325
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v2

    const/16 v8, 0xa

    if-lt v2, v8, :cond_a8

    const-wide/16 v8, 0x0

    cmpl-double v2, v4, v8

    if-lez v2, :cond_a8

    const/4 v2, 0x1

    .line 326
    :goto_7f
    if-eqz v2, :cond_b1

    .line 327
    cmpl-double v2, v10, v4

    if-ltz v2, :cond_aa

    move-object v8, v7

    .line 328
    :goto_86
    cmpl-double v2, v10, v4

    if-ltz v2, :cond_ac

    move-object v2, v6

    .line 329
    :goto_8b
    const/4 v4, 0x0

    move v6, v4

    :goto_8d
    const/4 v4, 0x5

    if-ge v6, v4, :cond_b4

    .line 330
    iget-object v4, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z20:[D

    aget-wide v10, v8, v6

    aput-wide v10, v4, v6

    .line 331
    iget-object v7, v3, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->z100:[D

    aget-wide v4, v2, v6

    const-wide/16 v10, 0x0

    cmpl-double v4, v4, v10

    if-lez v4, :cond_ae

    aget-wide v4, v2, v6

    :goto_a2
    aput-wide v4, v7, v6

    .line 329
    add-int/lit8 v4, v6, 0x1

    move v6, v4

    goto :goto_8d

    .line 325
    :cond_a8
    const/4 v2, 0x0

    goto :goto_7f

    :cond_aa
    move-object v8, v6

    .line 327
    goto :goto_86

    :cond_ac
    move-object v2, v7

    .line 328
    goto :goto_8b

    .line 331
    :cond_ae
    const-wide/high16 v4, 0x7ff8000000000000L    # Double.NaN

    goto :goto_a2

    .line 334
    :cond_b1
    invoke-static {v3, v7}, Lcom/isaigu/gymapp/wearable/scale/ScaleModel;->single(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;[D)V

    :cond_b4
    move-object v2, v3

    .line 336
    goto/16 :goto_10
.end method

.method static start(Landroid/content/Context;Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    .line 69
    sget-boolean v1, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->broken:Z

    if-eqz v1, :cond_7

    .line 98
    :goto_6
    return-object v0

    .line 73
    :cond_7
    :try_start_7
    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    invoke-direct {v1, p1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V

    .line 74
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    if-eqz v2, :cond_15

    .line 75
    sget-object v2, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    invoke-virtual {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->close()V

    .line 77
    :cond_15
    sput-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    .line 78
    invoke-static {}, Lcn/icomon/icdevicemanager/ICDeviceManager;->shared()Lcn/icomon/icdevicemanager/ICDeviceManager;

    move-result-object v2

    .line 79
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->user()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/icomon/icdevicemanager/ICDeviceManager;->updateUserInfo(Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V

    .line 80
    invoke-virtual {v2, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->setDelegate(Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V

    .line 81
    sget-boolean v3, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->initCalled:Z

    if-nez v3, :cond_4a

    .line 82
    const/4 v3, 0x1

    sput-boolean v3, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->initCalled:Z

    .line 83
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    .line 84
    new-instance v4, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;

    invoke-direct {v4}, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;-><init>()V

    .line 85
    iput-object p0, v4, Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;->context:Landroid/content/Context;

    .line 86
    invoke-virtual {v2, v4}, Lcn/icomon/icdevicemanager/ICDeviceManager;->initMgrWithConfig(Lcn/icomon/icdevicemanager/model/other/ICDeviceManagerConfig;)V

    .line 87
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    if-eq v2, v3, :cond_43

    .line 88
    invoke-static {v3}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 90
    :cond_43
    const-string v2, "init"

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    :cond_48
    :goto_48
    move-object v0, v1

    .line 94
    goto :goto_6

    .line 91
    :cond_4a
    sget-boolean v2, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->initOk:Z

    if-eqz v2, :cond_48

    .line 92
    invoke-virtual {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scan()V
    :try_end_51
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_51} :catch_52

    goto :goto_48

    .line 95
    :catch_52
    move-exception v1

    .line 96
    sput-boolean v5, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->broken:Z

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unavailable: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    goto :goto_6
.end method

.method static val(Ljava/lang/Double;)D
    .registers 5

    .prologue
    const-wide/16 v0, 0x0

    .line 340
    if-eqz p0, :cond_12

    invoke-virtual {p0}, Ljava/lang/Double;->isNaN()Z

    move-result v2

    if-nez v2, :cond_12

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    cmpg-double v2, v2, v0

    if-gtz v2, :cond_13

    :cond_12
    :goto_12
    return-wide v0

    :cond_13
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    goto :goto_12
.end method


# virtual methods
.method public close()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 146
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->closed:Z

    .line 147
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->stopScan()V

    .line 148
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->removeDevice()V

    .line 149
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    if-ne v0, p0, :cond_18

    .line 150
    sput-object v1, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    .line 152
    :try_start_10
    invoke-static {}, Lcn/icomon/icdevicemanager/ICDeviceManager;->shared()Lcn/icomon/icdevicemanager/ICDeviceManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/ICDeviceManager;->setDelegate(Lcn/icomon/icdevicemanager/ICDeviceManagerDelegate;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_18} :catch_19

    .line 156
    :cond_18
    :goto_18
    return-void

    .line 153
    :catch_19
    move-exception v0

    goto :goto_18
.end method

.method firstLink(I)V
    .registers 6

    .prologue
    .line 207
    iget v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->addToken:I

    if-ne p1, v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->closed:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->everLinked:Z

    if-eqz v0, :cond_11

    .line 218
    :cond_10
    :goto_10
    return-void

    .line 210
    :cond_11
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    .line 211
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no link with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-wide/16 v2, 0x19

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " s \u2014 next one"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 212
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->mac(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_58

    .line 213
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->skipped:Ljava/util/Set;

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_58
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->removeDevice()V

    .line 216
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->icomonLost()V

    .line 217
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scan()V

    goto :goto_10
.end method

.method public onBleState(Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;)V
    .registers 4

    .prologue
    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ble "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;->ICBleStatePoweredOn:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICBleState;

    if-ne p1, v0, :cond_25

    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    if-ne v0, p0, :cond_25

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-nez v0, :cond_25

    .line 239
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scan()V

    .line 241
    :cond_25
    return-void
.end method

.method public onDeviceConnectionChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;)V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 245
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->closed:Z

    if-nez v0, :cond_15

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owns(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 255
    :cond_15
    :goto_15
    return-void

    .line 248
    :cond_16
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;->ICDeviceConnectStateConnected:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;

    if-ne p2, v0, :cond_52

    move v0, v1

    .line 249
    :goto_1b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v0, :cond_54

    const-string v2, "connected "

    :goto_24
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 250
    if-eqz v0, :cond_4c

    .line 251
    iput-boolean v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->everLinked:Z

    .line 252
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->app:Landroid/content/Context;

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleStore;->setMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 254
    :cond_4c
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->icomonLink(Z)V

    goto :goto_15

    .line 248
    :cond_52
    const/4 v0, 0x0

    goto :goto_1b

    .line 249
    :cond_54
    const-string v2, "disconnected "

    goto :goto_24
.end method

.method public onInitFinish(Z)V
    .registers 4

    .prologue
    .line 224
    sput-boolean p1, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->initOk:Z

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p1, :cond_22

    const-string v0, "ok"

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 226
    if-nez p1, :cond_25

    .line 227
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->broken:Z

    .line 233
    :cond_21
    :goto_21
    return-void

    .line 225
    :cond_22
    const-string v0, "FAILED"

    goto :goto_11

    .line 230
    :cond_25
    sget-object v0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owner:Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;

    if-ne v0, p0, :cond_21

    .line 231
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scan()V

    goto :goto_21
.end method

.method public onNodeConnectionChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceConnectState;)V
    .registers 4

    .prologue
    .line 366
    return-void
.end method

.method public onReceiveBattery(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " %"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public onReceiveConfigWifiResult(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICConfigWifiState;)V
    .registers 3

    .prologue
    .line 418
    return-void
.end method

.method public onReceiveCoordData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICCoordData;)V
    .registers 3

    .prologue
    .line 378
    return-void
.end method

.method public onReceiveDebugData(Lcn/icomon/icdevicemanager/model/device/ICDevice;ILjava/lang/Object;)V
    .registers 4

    .prologue
    .line 362
    return-void
.end method

.method public onReceiveDeviceInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;)V
    .registers 5

    .prologue
    .line 350
    if-eqz p2, :cond_38

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->getModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " fw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->getFirmwareVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcn/icomon/icdevicemanager/model/device/ICDeviceInfo;->getHardwareVer()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 353
    :cond_38
    return-void
.end method

.method public onReceiveDeviceLightSetting(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 438
    return-void
.end method

.method public onReceiveHR(Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V
    .registers 3

    .prologue
    .line 422
    return-void
.end method

.method public onReceiveHistorySkipData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICSkipData;)V
    .registers 3

    .prologue
    .line 410
    return-void
.end method

.method public onReceiveKitchenScaleData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICKitchenScaleData;)V
    .registers 3

    .prologue
    .line 370
    return-void
.end method

.method public onReceiveKitchenScaleUnitChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICKitchenScaleUnit;)V
    .registers 3

    .prologue
    .line 374
    return-void
.end method

.method public onReceiveMeasureStepData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICMeasureStep;Ljava/lang/Object;)V
    .registers 6

    .prologue
    .line 264
    instance-of v0, p3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    if-eqz v0, :cond_e

    .line 265
    check-cast p3, Lcn/icomon/icdevicemanager/model/data/ICWeightData;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->weight(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightData;Ljava/lang/String;)V

    .line 269
    :cond_d
    :goto_d
    return-void

    .line 266
    :cond_e
    if-eqz p2, :cond_d

    .line 267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "step "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    goto :goto_d
.end method

.method public onReceiveRSSI(Lcn/icomon/icdevicemanager/model/device/ICDevice;I)V
    .registers 3

    .prologue
    .line 434
    return-void
.end method

.method public onReceiveRulerData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICRulerData;)V
    .registers 3

    .prologue
    .line 382
    return-void
.end method

.method public onReceiveRulerHistoryData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICRulerData;)V
    .registers 3

    .prologue
    .line 386
    return-void
.end method

.method public onReceiveRulerMeasureModeChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerMeasureMode;)V
    .registers 3

    .prologue
    .line 402
    return-void
.end method

.method public onReceiveRulerUnitChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRulerUnit;)V
    .registers 3

    .prologue
    .line 398
    return-void
.end method

.method public onReceiveSkipData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICSkipData;)V
    .registers 3

    .prologue
    .line 406
    return-void
.end method

.method public onReceiveUpgradePercent(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICUpgradeStatus;I)V
    .registers 4

    .prologue
    .line 414
    return-void
.end method

.method public onReceiveUserInfo(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/device/ICUserInfo;)V
    .registers 3

    .prologue
    .line 426
    return-void
.end method

.method public onReceiveUserInfoList(Lcn/icomon/icdevicemanager/model/device/ICDevice;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/icomon/icdevicemanager/model/device/ICDevice;",
            "Ljava/util/List",
            "<",
            "Lcn/icomon/icdevicemanager/model/device/ICUserInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 430
    return-void
.end method

.method public onReceiveWeightCenterData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightCenterData;)V
    .registers 3

    .prologue
    .line 390
    return-void
.end method

.method public onReceiveWeightData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightData;)V
    .registers 4

    .prologue
    .line 259
    const-string v0, "data"

    invoke-virtual {p0, p1, p2, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->weight(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightData;Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onReceiveWeightHistoryData(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightHistoryData;)V
    .registers 3

    .prologue
    .line 346
    return-void
.end method

.method public onReceiveWeightUnitChanged(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;)V
    .registers 3

    .prologue
    .line 394
    return-void
.end method

.method public onScanResult(Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;)V
    .registers 7

    .prologue
    const/4 v2, 0x0

    .line 174
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->closed:Z

    if-nez v0, :cond_f

    if-eqz p1, :cond_f

    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->macAddr:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v0, :cond_10

    .line 204
    :cond_f
    :goto_f
    return-void

    .line 177
    :cond_10
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->macAddr:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 178
    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->rssi:Ljava/lang/Integer;

    if-eqz v0, :cond_ff

    iget-object v0, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->rssi:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 179
    :goto_22
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->logged:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "seen "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " dBm \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\" "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->subType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceSubType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " / "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->communicationType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceCommunicationType;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 183
    :cond_7a
    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->type:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    .line 184
    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-eq v1, v4, :cond_8c

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeFatScaleWithTemperature:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-eq v1, v4, :cond_8c

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeWeightScale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-eq v1, v4, :cond_8c

    sget-object v4, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;->ICDeviceTypeBalance:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICDeviceType;

    if-ne v1, v4, :cond_103

    :cond_8c
    const/4 v1, 0x1

    .line 188
    :goto_8d
    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->skipped:Ljava/util/Set;

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v1, v3, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->acceptIcomon(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 191
    invoke-virtual {p0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->stopScan()V

    .line 192
    new-instance v0, Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-direct {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;-><init>()V

    .line 193
    iget-object v1, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->macAddr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->setMacAddr(Ljava/lang/String;)V

    .line 194
    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 195
    iput-boolean v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->everLinked:Z

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcn/icomon/icdevicemanager/model/device/ICScanDeviceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->icomonFound(Ljava/lang/String;)V

    .line 199
    :try_start_dd
    invoke-static {}, Lcn/icomon/icdevicemanager/ICDeviceManager;->shared()Lcn/icomon/icdevicemanager/ICDeviceManager;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$Added;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$Added;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->addDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICAddDeviceCallBack;)V
    :try_end_e9
    .catch Ljava/lang/Throwable; {:try_start_dd .. :try_end_e9} :catch_105

    .line 203
    :goto_e9
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->main:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;

    iget v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->addToken:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->addToken:I

    invoke-direct {v1, p0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$FirstLink;-><init>(Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;I)V

    const-wide/16 v2, 0x61a8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_f

    .line 178
    :cond_ff
    const/16 v0, -0x64

    goto/16 :goto_22

    :cond_103
    move v1, v2

    .line 184
    goto :goto_8d

    .line 200
    :catch_105
    move-exception v0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "add: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    goto :goto_e9
.end method

.method owns(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v0, :cond_14

    if-eqz p1, :cond_14

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method removeDevice()V
    .registers 4

    .prologue
    .line 159
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 160
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    .line 161
    if-nez v0, :cond_8

    .line 168
    :goto_7
    return-void

    .line 165
    :cond_8
    :try_start_8
    invoke-static {}, Lcn/icomon/icdevicemanager/ICDeviceManager;->shared()Lcn/icomon/icdevicemanager/ICDeviceManager;

    move-result-object v1

    new-instance v2, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$Removed;

    invoke-direct {v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon$Removed;-><init>()V

    invoke-virtual {v1, v0, v2}, Lcn/icomon/icdevicemanager/ICDeviceManager;->removeDevice(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/other/ICConstant$ICRemoveDeviceCallBack;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_15

    goto :goto_7

    .line 166
    :catch_15
    move-exception v0

    goto :goto_7
.end method

.method scan()V
    .registers 4

    .prologue
    .line 117
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->closed:Z

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scanning:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->device:Lcn/icomon/icdevicemanager/model/device/ICDevice;

    if-eqz v0, :cond_d

    .line 127
    :cond_c
    :goto_c
    return-void

    .line 121
    :cond_d
    :try_start_d
    invoke-static {}, Lcn/icomon/icdevicemanager/ICDeviceManager;->shared()Lcn/icomon/icdevicemanager/ICDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->scanDevice(Lcn/icomon/icdevicemanager/callback/ICScanDeviceDelegate;)V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scanning:Z

    .line 123
    const-string v0, "scan"

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 124
    :catch_1d
    move-exception v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scan: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    goto :goto_c
.end method

.method stopScan()V
    .registers 2

    .prologue
    .line 130
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scanning:Z

    if-nez v0, :cond_5

    .line 138
    :goto_4
    return-void

    .line 133
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->scanning:Z

    .line 135
    :try_start_8
    invoke-static {}, Lcn/icomon/icdevicemanager/ICDeviceManager;->shared()Lcn/icomon/icdevicemanager/ICDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/ICDeviceManager;->stopScan()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_f} :catch_10

    goto :goto_4

    .line 136
    :catch_10
    move-exception v0

    goto :goto_4
.end method

.method user()Lcn/icomon/icdevicemanager/model/device/ICUserInfo;
    .registers 6

    .prologue
    const/4 v4, 0x1

    .line 103
    new-instance v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;-><init>()V

    .line 104
    iput v4, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userIndex:I

    .line 105
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->clientId:J

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->userId:J

    .line 106
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    if-lez v0, :cond_41

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->heightCm:I

    :goto_18
    iput v0, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->height:I

    .line 107
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    if-lez v0, :cond_44

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->age:I

    :goto_24
    iput v0, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->age:I

    .line 108
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-wide v2, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->lastKg:D

    iput-wide v2, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weight:D

    .line 109
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    iget-boolean v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->male:Z

    if-eqz v0, :cond_47

    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ICSexTypeMale:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    :goto_34
    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->sex:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    .line 110
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;->ICPeopleTypeNormal:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->peopleType:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICPeopleType;

    .line 111
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;->ICWeightUnitKg:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    iput-object v0, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->weightUnit:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICWeightUnit;

    .line 112
    iput-boolean v4, v1, Lcn/icomon/icdevicemanager/model/device/ICUserInfo;->enableMeasureImpendence:Z

    .line 113
    return-object v1

    .line 106
    :cond_41
    const/16 v0, 0xaa

    goto :goto_18

    .line 107
    :cond_44
    const/16 v0, 0x1e

    goto :goto_24

    .line 109
    :cond_47
    sget-object v0, Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;->ICSexTypeFemal:Lcn/icomon/icdevicemanager/model/other/ICConstant$ICSexType;

    goto :goto_34
.end method

.method weight(Lcn/icomon/icdevicemanager/model/device/ICDevice;Lcn/icomon/icdevicemanager/model/data/ICWeightData;Ljava/lang/String;)V
    .registers 10

    .prologue
    .line 272
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->closed:Z

    if-nez v0, :cond_12

    if-eqz p2, :cond_12

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcn/icomon/icdevicemanager/model/device/ICDevice;->getMacAddr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->owns(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 292
    :cond_12
    :goto_12
    return-void

    .line 275
    :cond_13
    iget-wide v0, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->weight_kg:D

    .line 276
    iget-boolean v2, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->isStabilized:Z

    if-nez v2, :cond_20

    .line 277
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_12

    .line 280
    :cond_20
    iget-object v2, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    iget v3, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->reading(DLjava/util/List;I)Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;

    move-result-object v2

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " kg, electrodes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->electrode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", imps "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->impendences:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hr "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->hr:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", scale fat "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->log(Ljava/lang/String;)V

    .line 283
    if-nez v2, :cond_7b

    .line 284
    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, v3}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->live(DZ)V

    goto :goto_12

    .line 287
    :cond_7b
    iget-wide v0, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v0, v4

    if-lez v0, :cond_87

    .line 288
    iget-wide v0, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->bodyFatPercent:D

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleFatPct:D

    .line 290
    :cond_87
    iget-wide v0, p2, Lcn/icomon/icdevicemanager/model/data/ICWeightData;->time:J

    iput-wide v0, v2, Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;->scaleTime:J

    .line 291
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleIcomon;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0, v2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->finish(Lcom/isaigu/gymapp/wearable/scale/ScaleProtocol$Reading;)V

    goto :goto_12
.end method
