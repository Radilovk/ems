.class public Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;
.super Ljava/lang/Object;
.source "ICNotificationCenter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static ____notifyCenterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/List<",
            "Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deInit()V
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 45
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    sput-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    return-void
.end method

.method public static initCenter()V
    .registers 1

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    :cond_b
    return-void
.end method

.method public static post(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 4

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 95
    :cond_5
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 96
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 98
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v0, 0x0

    .line 101
    :goto_1f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_35

    .line 102
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;

    .line 103
    invoke-interface {v2, p0}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;->onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_31

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :catch_31
    move-exception p0

    .line 108
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_35
    return-void
.end method

.method public static post(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V
    .registers 3

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 75
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 77
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;

    .line 82
    invoke-interface {v0, p1}, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;->onNotificationCallBack(Lcn/icomon/icdevicemanager/notify/ICBaseEvent;)V

    goto :goto_1c

    :cond_2c
    return-void
.end method

.method public static subscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V
    .registers 4

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 58
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 59
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_1f

    .line 62
    :cond_14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 63
    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 66
    :goto_1f
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static unsubscribe(Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V
    .registers 5

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 143
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3b

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 145
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_15
    :goto_15
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v2, 0x0

    .line 146
    :goto_22
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_15

    .line 147
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;

    .line 148
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    .line 149
    invoke-interface {v1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_3b
    return-void
.end method

.method public static unsubscribe(Ljava/lang/Class;Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;)V
    .registers 4

    :try_start_0
    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 117
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_33

    sget-object v0, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter;->____notifyCenterMap:Ljava/util/HashMap;

    .line 119
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 123
    :goto_16
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_33

    .line 124
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/icomon/icdevicemanager/notify/ICNotificationCenter$ICNotificationCallBack;

    .line 125
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 126
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2f

    goto :goto_33

    :cond_2c
    add-int/lit8 p0, p0, 0x1

    goto :goto_16

    :catch_2f
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_33
    :goto_33
    return-void
.end method
