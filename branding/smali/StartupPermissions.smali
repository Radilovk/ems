.class public final Lcom/isaigu/gymapp/train/utils/StartupPermissions;
.super Ljava/lang/Object;
.source "StartupPermissions.java"


# static fields
.field private static final REQUEST_ALL:I = 0x5390

.field private static requestedThisProcess:Z


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method private static buildPermissionList()[Ljava/lang/String;
    .registers 3

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x20

    if-gt v1, v2, :cond_2e

    .line 55
    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_2e
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static requestAllIfNeeded(Landroid/app/Activity;)V
    .registers 7

    .line 20
    if-eqz p0, :cond_52

    sget-boolean v0, Lcom/isaigu/gymapp/train/utils/StartupPermissions;->requestedThisProcess:Z

    if-eqz v0, :cond_7

    goto :goto_52

    .line 23
    :cond_7
    const/4 v0, 0x1

    sput-boolean v0, Lcom/isaigu/gymapp/train/utils/StartupPermissions;->requestedThisProcess:Z

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/train/utils/StartupPermissions;->buildPermissionList()[Ljava/lang/String;

    move-result-object v0

    .line 25
    array-length v1, v0

    if-nez v1, :cond_12

    .line 26
    return-void

    .line 28
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    array-length v2, v0

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_32

    aget-object v4, v0, v3

    .line 30
    if-eqz v4, :cond_2f

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_26

    .line 31
    goto :goto_2f

    .line 33
    :cond_26
    invoke-virtual {p0, v4}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_2f

    .line 34
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_2f
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    .line 37
    :cond_32
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 38
    return-void

    .line 41
    :cond_39
    :try_start_39
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    const/16 v1, 0x5390

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V
    :try_end_4a
    .catchall {:try_start_39 .. :try_end_4a} :catchall_4b

    .line 44
    goto :goto_51

    .line 42
    :catchall_4b
    move-exception p0

    .line 43
    const-string v0, "startup_permissions"

    invoke-static {v0, p0}, Lcom/isaigu/gymapp/train/utils/MusicDiagLog;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    :goto_51
    return-void

    .line 21
    :cond_52
    :goto_52
    return-void
.end method
