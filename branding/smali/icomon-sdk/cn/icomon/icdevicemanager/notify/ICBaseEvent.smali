.class public Lcn/icomon/icdevicemanager/notify/ICBaseEvent;
.super Ljava/lang/Object;
.source "ICBaseEvent.java"


# static fields
.field private static final ___lock:Ljava/lang/Integer;

.field private static ___sEID:Ljava/lang/Integer;


# instance fields
.field public eventId:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;->___sEID:Ljava/lang/Integer;

    sput-object v0, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;->___lock:Ljava/lang/Integer;

    .line 17
    monitor-enter v0

    :try_start_6
    sget-object v1, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;->___sEID:Ljava/lang/Integer;

    iput-object v1, p0, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;->eventId:Ljava/lang/Integer;

    .line 20
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcn/icomon/icdevicemanager/notify/ICBaseEvent;->___sEID:Ljava/lang/Integer;

    .line 21
    monitor-exit v0

    return-void

    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_6 .. :try_end_1a} :catchall_18

    throw v1
.end method
