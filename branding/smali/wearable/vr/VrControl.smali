.class public final Lcom/isaigu/gymapp/wearable/vr/VrControl;
.super Ljava/lang/Object;
.source "VrControl.java"

# interfaces
.implements Lcom/isaigu/gymapp/wearable/vr/VrControlSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;
    }
.end annotation


# static fields
.field private static final MAIN:Landroid/os/Handler;

.field static final STRENGTH_STEP_MAX:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 26
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/isaigu/gymapp/wearable/vr/VrControl;->MAIN:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static apply(III)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 67
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->context()Landroid/content/Context;

    move-result-object v2

    .line 68
    packed-switch p0, :pswitch_data_76

    .line 101
    :goto_9
    return-void

    .line 70
    :pswitch_a
    if-eqz p1, :cond_3f

    :goto_c
    invoke-static {v2, v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setPaused(Landroid/content/Context;Z)V

    .line 99
    :cond_f
    :goto_f
    const-string v0, "vr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dock "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBleDiagLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->onRemoteChange()V

    goto :goto_9

    :cond_3f
    move v0, v1

    .line 70
    goto :goto_c

    .line 73
    :pswitch_41
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isDriving()Z

    move-result v0

    if-eqz v0, :cond_f

    if-eqz p2, :cond_f

    .line 74
    const/4 v0, -0x5

    const/4 v1, 0x5

    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 75
    invoke-static {v0}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->adjustCeiling(I)I

    .line 76
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->refreshSyncLabel()V

    goto :goto_f

    .line 80
    :pswitch_5a
    invoke-static {v2, p2}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setFloorPercent(Landroid/content/Context;I)V

    goto :goto_f

    .line 83
    :pswitch_5e
    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setSensitivity(Landroid/content/Context;I)V

    goto :goto_f

    .line 86
    :pswitch_62
    invoke-static {v2, p1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setSmoothIndex(Landroid/content/Context;I)V

    goto :goto_f

    .line 89
    :pswitch_66
    const/16 v3, 0xa

    if-ge p1, v3, :cond_f

    .line 90
    if-eqz p2, :cond_70

    :goto_6c
    invoke-static {v2, p1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setRests(Landroid/content/Context;IZ)V

    goto :goto_f

    :cond_70
    move v0, v1

    goto :goto_6c

    .line 94
    :pswitch_72
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->reset(Landroid/content/Context;)V

    goto :goto_f

    .line 68
    :pswitch_data_76
    .packed-switch 0x1
        :pswitch_a
        :pswitch_41
        :pswitch_5a
        :pswitch_5e
        :pswitch_62
        :pswitch_66
        :pswitch_72
    .end packed-switch
.end method


# virtual methods
.method public fillState(Ljava/nio/ByteBuffer;I)V
    .registers 9

    .prologue
    const/16 v5, 0x64

    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 37
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isDriving()Z

    move-result v3

    .line 39
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isLinked()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_f
    if-eqz v3, :cond_13

    .line 43
    or-int/lit8 v0, v0, 0x2

    .line 45
    :cond_13
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->isPaused()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 46
    or-int/lit8 v0, v0, 0x4

    .line 48
    :cond_1b
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->isYieldedToMusic()Z

    move-result v4

    if-eqz v4, :cond_23

    .line 49
    or-int/lit8 v0, v0, 0x8

    .line 51
    :cond_23
    int-to-byte v0, v0

    invoke-virtual {p1, p2, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 52
    add-int/lit8 v0, p2, 0x1

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->sensitivity()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 53
    add-int/lit8 v0, p2, 0x2

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->smoothIndex()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 54
    add-int/lit8 v0, p2, 0x3

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->floorPercent()I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 55
    add-int/lit8 v0, p2, 0x4

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->restMask()I

    move-result v4

    int-to-short v4, v4

    invoke-virtual {p1, v0, v4}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    .line 56
    add-int/lit8 v0, p2, 0x6

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveLevel()I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-byte v4, v4

    invoke-virtual {p1, v0, v4}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 57
    if-eqz v3, :cond_98

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->liveApplied()I

    move-result v0

    .line 58
    :goto_67
    add-int/lit8 v4, p2, 0x7

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-byte v0, v0

    invoke-virtual {p1, v4, v0}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    .line 59
    add-int/lit8 v0, p2, 0x8

    if-eqz v3, :cond_7d

    invoke-static {}, Lcom/isaigu/gymapp/train/utils/MasterStrengthControl;->getCeiling()I

    move-result v1

    :cond_7d
    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 60
    add-int/lit8 v0, p2, 0xc

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->hitsPassed()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 61
    add-int/lit8 v0, p2, 0x10

    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->hitsDropped()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 62
    add-int/lit8 v0, p2, 0x14

    invoke-virtual {p1, v0, v2}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 63
    return-void

    :cond_98
    move v0, v1

    .line 57
    goto :goto_67

    :cond_9a
    move v0, v2

    goto/16 :goto_f
.end method

.method public onVrControl(III)V
    .registers 6

    .prologue
    .line 30
    if-eqz p1, :cond_c

    .line 31
    sget-object v0, Lcom/isaigu/gymapp/wearable/vr/VrControl;->MAIN:Landroid/os/Handler;

    new-instance v1, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;

    invoke-direct {v1, p1, p2, p3}, Lcom/isaigu/gymapp/wearable/vr/VrControl$Apply;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 33
    :cond_c
    return-void
.end method
