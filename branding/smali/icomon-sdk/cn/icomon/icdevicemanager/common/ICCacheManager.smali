.class public Lcn/icomon/icdevicemanager/common/ICCacheManager;
.super Ljava/lang/Object;
.source "ICCacheManager.java"


# static fields
.field private static ____gsMgr:Lcn/icomon/icdevicemanager/common/ICCacheManager;

.field private static final ___lock:Ljava/lang/Integer;


# instance fields
.field private editor:Landroid/content/SharedPreferences$Editor;

.field private sharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->___lock:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private init()V
    .registers 4

    .line 39
    invoke-static {}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->shared()Lcn/icomon/icdevicemanager/common/ICConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/icomon/icdevicemanager/common/ICConfigManager;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ICDMCACHE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_19

    .line 41
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    :cond_19
    return-void
.end method

.method public static shared()Lcn/icomon/icdevicemanager/common/ICCacheManager;
    .registers 2

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->___lock:Ljava/lang/Integer;

    .line 29
    monitor-enter v0

    :try_start_3
    sget-object v1, Lcn/icomon/icdevicemanager/common/ICCacheManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICCacheManager;

    if-nez v1, :cond_11

    .line 31
    new-instance v1, Lcn/icomon/icdevicemanager/common/ICCacheManager;

    invoke-direct {v1}, Lcn/icomon/icdevicemanager/common/ICCacheManager;-><init>()V

    sput-object v1, Lcn/icomon/icdevicemanager/common/ICCacheManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICCacheManager;

    .line 32
    invoke-direct {v1}, Lcn/icomon/icdevicemanager/common/ICCacheManager;->init()V

    .line 34
    :cond_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_15

    sget-object v0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICCacheManager;

    return-object v0

    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v1
.end method


# virtual methods
.method public deInit()V
    .registers 2

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 46
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    iput-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    sput-object v0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->____gsMgr:Lcn/icomon/icdevicemanager/common/ICCacheManager;

    return-void
.end method

.method public getArrayValue(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_a

    .line 140
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_a
    const-string v1, "[]"

    .line 142
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 145
    :try_start_10
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->json2list(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 148
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public getDictValue(Ljava/lang/String;)Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_a

    .line 124
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    :cond_a
    const-string v1, "{}"

    .line 126
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 129
    :try_start_10
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-static {v0}, Lcn/icomon/icdevicemanager/common/ICCommon;->json2map(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 132
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 134
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1
.end method

.method public getFloatValue(Ljava/lang/String;)F
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 117
    :cond_6
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method public getIntValue(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 109
    :cond_a
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->sharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    if-nez v0, :cond_7

    return-object v1

    .line 101
    :cond_7
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setArrayValue(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_5

    return-void

    .line 90
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    iget-object p2, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 92
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 93
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setDictValue(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_5

    return-void

    .line 80
    :cond_5
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iget-object p2, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 82
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 83
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setFloatValue(Ljava/lang/String;F)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_5

    return-void

    .line 72
    :cond_5
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 73
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setIntValue(Ljava/lang/String;Ljava/lang/Integer;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_5

    return-void

    .line 64
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 65
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setStringValue(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    if-nez v0, :cond_5

    return-void

    .line 56
    :cond_5
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lcn/icomon/icdevicemanager/common/ICCacheManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 57
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
