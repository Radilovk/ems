.class public Lme/weyye/hipermission/HiPermission;
.super Ljava/lang/Object;
.source "HiPermission.java"


# instance fields
.field private mAnimStyleId:I

.field private mCallback:Lme/weyye/hipermission/PermissionCallback;

.field private mCheckPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFilterColor:I

.field private mMsg:Ljava/lang/String;

.field private mNormalPermissionIconRes:[I

.field private mNormalPermissionNames:[Ljava/lang/String;

.field private mNormalPermissions:[Ljava/lang/String;

.field private mPermissionType:I

.field private mStyleResId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, -0x1

    iput v0, p0, Lme/weyye/hipermission/HiPermission;->mStyleResId:I

    .line 34
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    const-string v3, "android.permission.CAMERA"

    filled-new-array {v1, v2, v3}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/weyye/hipermission/HiPermission;->mNormalPermissions:[Ljava/lang/String;

    .line 36
    const/4 v1, 0x3

    new-array v1, v1, [I

    sget v2, Lme/weyye/hipermission/R$drawable;->permission_ic_storage:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lme/weyye/hipermission/R$drawable;->permission_ic_location:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lme/weyye/hipermission/R$drawable;->permission_ic_camera:I

    const/4 v4, 0x2

    aput v2, v1, v4

    iput-object v1, p0, Lme/weyye/hipermission/HiPermission;->mNormalPermissionIconRes:[I

    .line 38
    iput v3, p0, Lme/weyye/hipermission/HiPermission;->mFilterColor:I

    .line 39
    iput v0, p0, Lme/weyye/hipermission/HiPermission;->mAnimStyleId:I

    .line 46
    iput-object p1, p0, Lme/weyye/hipermission/HiPermission;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lme/weyye/hipermission/R$array;->permissionNames:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lme/weyye/hipermission/HiPermission;->mNormalPermissionNames:[Ljava/lang/String;

    .line 48
    return-void
.end method

.method public static checkPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 89
    invoke-static {p0, p1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 90
    .local v0, "checkPermission":I
    if-nez v0, :cond_0

    .line 91
    const/4 v1, 0x1

    return v1

    .line 93
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static create(Landroid/content/Context;)Lme/weyye/hipermission/HiPermission;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 42
    new-instance v0, Lme/weyye/hipermission/HiPermission;

    invoke-direct {v0, p0}, Lme/weyye/hipermission/HiPermission;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getNormalPermissions()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "permissionItems":Ljava/util/List;, "Ljava/util/List<Lme/weyye/hipermission/PermissionItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lme/weyye/hipermission/HiPermission;->mNormalPermissionNames:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 83
    new-instance v3, Lme/weyye/hipermission/PermissionItem;

    iget-object v4, p0, Lme/weyye/hipermission/HiPermission;->mNormalPermissions:[Ljava/lang/String;

    aget-object v4, v4, v1

    aget-object v2, v2, v1

    iget-object v5, p0, Lme/weyye/hipermission/HiPermission;->mNormalPermissionIconRes:[I

    aget v5, v5, v1

    invoke-direct {v3, v4, v2, v5}, Lme/weyye/hipermission/PermissionItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private startActivity()V
    .locals 3

    .line 150
    iget-object v0, p0, Lme/weyye/hipermission/HiPermission;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    invoke-static {v0}, Lme/weyye/hipermission/PermissionActivity;->setCallBack(Lme/weyye/hipermission/PermissionCallback;)V

    .line 151
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lme/weyye/hipermission/HiPermission;->mContext:Landroid/content/Context;

    const-class v2, Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lme/weyye/hipermission/HiPermission;->mTitle:Ljava/lang/String;

    const-string v2, "data_title"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget v1, p0, Lme/weyye/hipermission/HiPermission;->mPermissionType:I

    const-string v2, "data_permission_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 154
    iget-object v1, p0, Lme/weyye/hipermission/HiPermission;->mMsg:Ljava/lang/String;

    const-string v2, "data_msg"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 155
    iget v1, p0, Lme/weyye/hipermission/HiPermission;->mFilterColor:I

    const-string v2, "data_color_filter"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 156
    iget v1, p0, Lme/weyye/hipermission/HiPermission;->mStyleResId:I

    const-string v2, "data_style_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 157
    iget v1, p0, Lme/weyye/hipermission/HiPermission;->mAnimStyleId:I

    const-string v2, "data_anim_style"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 158
    iget-object v1, p0, Lme/weyye/hipermission/HiPermission;->mCheckPermissions:Ljava/util/List;

    check-cast v1, Ljava/io/Serializable;

    const-string v2, "data_permissions"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 159
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 160
    iget-object v1, p0, Lme/weyye/hipermission/HiPermission;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 161
    return-void
.end method


# virtual methods
.method public animStyle(I)Lme/weyye/hipermission/HiPermission;
    .locals 0
    .param p1, "styleId"    # I

    .line 71
    iput p1, p0, Lme/weyye/hipermission/HiPermission;->mAnimStyleId:I

    .line 72
    return-object p0
.end method

.method public checkMutiPermission(Lme/weyye/hipermission/PermissionCallback;)V
    .locals 3
    .param p1, "callback"    # Lme/weyye/hipermission/PermissionCallback;

    .line 102
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_1

    .line 103
    if-eqz p1, :cond_0

    .line 104
    invoke-interface {p1}, Lme/weyye/hipermission/PermissionCallback;->onFinish()V

    .line 105
    :cond_0
    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lme/weyye/hipermission/HiPermission;->mCheckPermissions:Ljava/util/List;

    if-nez v0, :cond_2

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/weyye/hipermission/HiPermission;->mCheckPermissions:Ljava/util/List;

    .line 110
    invoke-direct {p0}, Lme/weyye/hipermission/HiPermission;->getNormalPermissions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 114
    :cond_2
    iget-object v0, p0, Lme/weyye/hipermission/HiPermission;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 115
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lme/weyye/hipermission/PermissionItem;>;"
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    iget-object v1, p0, Lme/weyye/hipermission/HiPermission;->mContext:Landroid/content/Context;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/weyye/hipermission/PermissionItem;

    iget-object v2, v2, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    invoke-static {v1, v2}, Lme/weyye/hipermission/HiPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 117
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 119
    :cond_4
    iput-object p1, p0, Lme/weyye/hipermission/HiPermission;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    .line 120
    iget-object v1, p0, Lme/weyye/hipermission/HiPermission;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 121
    invoke-direct {p0}, Lme/weyye/hipermission/HiPermission;->startActivity()V

    goto :goto_1

    .line 123
    :cond_5
    if-eqz p1, :cond_6

    .line 124
    invoke-interface {p1}, Lme/weyye/hipermission/PermissionCallback;->onFinish()V

    .line 128
    :cond_6
    :goto_1
    return-void
.end method

.method public checkSinglePermission(Ljava/lang/String;Lme/weyye/hipermission/PermissionCallback;)V
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callback"    # Lme/weyye/hipermission/PermissionCallback;

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lme/weyye/hipermission/HiPermission;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lme/weyye/hipermission/HiPermission;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    iput-object p2, p0, Lme/weyye/hipermission/HiPermission;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    .line 143
    sget v0, Lme/weyye/hipermission/PermissionActivity;->PERMISSION_TYPE_SINGLE:I

    iput v0, p0, Lme/weyye/hipermission/HiPermission;->mPermissionType:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lme/weyye/hipermission/HiPermission;->mCheckPermissions:Ljava/util/List;

    .line 145
    new-instance v1, Lme/weyye/hipermission/PermissionItem;

    invoke-direct {v1, p1}, Lme/weyye/hipermission/PermissionItem;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    invoke-direct {p0}, Lme/weyye/hipermission/HiPermission;->startActivity()V

    .line 147
    return-void

    .line 138
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 139
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Lme/weyye/hipermission/PermissionCallback;->onGuarantee(Ljava/lang/String;I)V

    .line 140
    :cond_2
    return-void
.end method

.method public filterColor(I)Lme/weyye/hipermission/HiPermission;
    .locals 0
    .param p1, "color"    # I

    .line 66
    iput p1, p0, Lme/weyye/hipermission/HiPermission;->mFilterColor:I

    .line 67
    return-object p0
.end method

.method public msg(Ljava/lang/String;)Lme/weyye/hipermission/HiPermission;
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;

    .line 56
    iput-object p1, p0, Lme/weyye/hipermission/HiPermission;->mMsg:Ljava/lang/String;

    .line 57
    return-object p0
.end method

.method public permissions(Ljava/util/List;)Lme/weyye/hipermission/HiPermission;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;)",
            "Lme/weyye/hipermission/HiPermission;"
        }
    .end annotation

    .line 61
    .local p1, "permissionItems":Ljava/util/List;, "Ljava/util/List<Lme/weyye/hipermission/PermissionItem;>;"
    iput-object p1, p0, Lme/weyye/hipermission/HiPermission;->mCheckPermissions:Ljava/util/List;

    .line 62
    return-object p0
.end method

.method public style(I)Lme/weyye/hipermission/HiPermission;
    .locals 0
    .param p1, "styleResIdsId"    # I

    .line 76
    iput p1, p0, Lme/weyye/hipermission/HiPermission;->mStyleResId:I

    .line 77
    return-object p0
.end method

.method public title(Ljava/lang/String;)Lme/weyye/hipermission/HiPermission;
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lme/weyye/hipermission/HiPermission;->mTitle:Ljava/lang/String;

    .line 52
    return-object p0
.end method
