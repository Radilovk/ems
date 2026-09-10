.class public Lme/weyye/hipermission/PermissionActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "PermissionActivity.java"


# static fields
.field public static PERMISSION_TYPE_MUTI:I = 0x0

.field public static PERMISSION_TYPE_SINGLE:I = 0x0

.field private static final REQUEST_CODE_MUTI:I = 0x2

.field public static final REQUEST_CODE_MUTI_SINGLE:I = 0x3

.field private static final REQUEST_CODE_SINGLE:I = 0x1

.field private static final REQUEST_SETTING:I = 0x6e

.field private static final TAG:Ljava/lang/String; = "PermissionActivity"

.field private static mCallback:Lme/weyye/hipermission/PermissionCallback;


# instance fields
.field private mAnimStyleId:I

.field private mAppName:Ljava/lang/CharSequence;

.field private mCheckPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lme/weyye/hipermission/PermissionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDialog:Landroid/app/Dialog;

.field private mFilterColor:I

.field private mMsg:Ljava/lang/String;

.field private mPermissionType:I

.field private mRePermissionIndex:I

.field private mStyleId:I

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const/4 v0, 0x1

    sput v0, Lme/weyye/hipermission/PermissionActivity;->PERMISSION_TYPE_SINGLE:I

    .line 34
    const/4 v0, 0x2

    sput v0, Lme/weyye/hipermission/PermissionActivity;->PERMISSION_TYPE_MUTI:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lme/weyye/hipermission/PermissionActivity;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lme/weyye/hipermission/PermissionActivity;

    .line 31
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$100(Lme/weyye/hipermission/PermissionActivity;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lme/weyye/hipermission/PermissionActivity;

    .line 31
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->getPermissionStrArray()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200()Lme/weyye/hipermission/PermissionCallback;
    .locals 1

    .line 31
    sget-object v0, Lme/weyye/hipermission/PermissionActivity;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    return-object v0
.end method

.method static synthetic access$300(Lme/weyye/hipermission/PermissionActivity;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lme/weyye/hipermission/PermissionActivity;
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # I

    .line 31
    invoke-direct {p0, p1, p2}, Lme/weyye/hipermission/PermissionActivity;->requestPermission([Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$400(Lme/weyye/hipermission/PermissionActivity;)V
    .locals 0
    .param p0, "x0"    # Lme/weyye/hipermission/PermissionActivity;

    .line 31
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->onClose()V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    .line 298
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 299
    .local v0, "iterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lme/weyye/hipermission/PermissionItem;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/weyye/hipermission/PermissionItem;

    iget-object v2, v2, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 301
    .local v1, "checkPermission":I
    if-nez v1, :cond_0

    .line 302
    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    .line 304
    .end local v1    # "checkPermission":I
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    return-void
.end method

.method private getDatas()V
    .locals 3

    .line 179
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 180
    .local v0, "intent":Landroid/content/Intent;
    sget v1, Lme/weyye/hipermission/PermissionActivity;->PERMISSION_TYPE_SINGLE:I

    const-string v2, "data_permission_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lme/weyye/hipermission/PermissionActivity;->mPermissionType:I

    .line 181
    const-string v1, "data_title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/weyye/hipermission/PermissionActivity;->mTitle:Ljava/lang/String;

    .line 182
    const-string v1, "data_msg"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lme/weyye/hipermission/PermissionActivity;->mMsg:Ljava/lang/String;

    .line 183
    const-string v1, "data_color_filter"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lme/weyye/hipermission/PermissionActivity;->mFilterColor:I

    .line 184
    const-string v1, "data_style_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lme/weyye/hipermission/PermissionActivity;->mStyleId:I

    .line 185
    const-string v1, "data_anim_style"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lme/weyye/hipermission/PermissionActivity;->mAnimStyleId:I

    .line 186
    const-string v1, "data_permissions"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iput-object v1, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    .line 187
    return-void
.end method

.method private getPermissionItem(Ljava/lang/String;)Lme/weyye/hipermission/PermissionItem;
    .locals 3
    .param p1, "permission"    # Ljava/lang/String;

    .line 330
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lme/weyye/hipermission/PermissionItem;

    .line 331
    .local v1, "permissionItem":Lme/weyye/hipermission/PermissionItem;
    iget-object v2, v1, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 332
    return-object v1

    .line 333
    .end local v1    # "permissionItem":Lme/weyye/hipermission/PermissionItem;
    :cond_0
    goto :goto_0

    .line 334
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getPermissionStrArray()[Ljava/lang/String;
    .locals 3

    .line 170
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 171
    .local v0, "str":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 172
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/weyye/hipermission/PermissionItem;

    iget-object v2, v2, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 171
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 174
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method private getPermissionTitle()Ljava/lang/String;
    .locals 4

    .line 84
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lme/weyye/hipermission/R$string;->permission_dialog_title:I

    invoke-virtual {p0, v0}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lme/weyye/hipermission/PermissionActivity;->mAppName:Ljava/lang/CharSequence;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mTitle:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method private onClose()V
    .locals 1

    .line 314
    sget-object v0, Lme/weyye/hipermission/PermissionActivity;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    if-eqz v0, :cond_0

    .line 315
    invoke-interface {v0}, Lme/weyye/hipermission/PermissionCallback;->onClose()V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->finish()V

    .line 317
    return-void
.end method

.method private onDeny(Ljava/lang/String;I)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 320
    sget-object v0, Lme/weyye/hipermission/PermissionActivity;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    if-eqz v0, :cond_0

    .line 321
    invoke-interface {v0, p1, p2}, Lme/weyye/hipermission/PermissionCallback;->onDeny(Ljava/lang/String;I)V

    .line 322
    :cond_0
    return-void
.end method

.method private onFinish()V
    .locals 1

    .line 308
    sget-object v0, Lme/weyye/hipermission/PermissionActivity;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0}, Lme/weyye/hipermission/PermissionCallback;->onFinish()V

    .line 310
    :cond_0
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->finish()V

    .line 311
    return-void
.end method

.method private onGuarantee(Ljava/lang/String;I)V
    .locals 1
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "position"    # I

    .line 325
    sget-object v0, Lme/weyye/hipermission/PermissionActivity;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0, p1, p2}, Lme/weyye/hipermission/PermissionCallback;->onGuarantee(Ljava/lang/String;I)V

    .line 327
    :cond_0
    return-void
.end method

.method private reRequestPermission(Ljava/lang/String;)V
    .locals 11
    .param p1, "permission"    # Ljava/lang/String;

    .line 137
    invoke-direct {p0, p1}, Lme/weyye/hipermission/PermissionActivity;->getPermissionItem(Ljava/lang/String;)Lme/weyye/hipermission/PermissionItem;

    move-result-object v0

    iget-object v0, v0, Lme/weyye/hipermission/PermissionItem;->PermissionName:Ljava/lang/String;

    .line 138
    .local v0, "permissionName":Ljava/lang/String;
    sget v1, Lme/weyye/hipermission/R$string;->permission_title:I

    invoke-virtual {p0, v1}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 139
    .local v1, "alertTitle":Ljava/lang/String;
    sget v3, Lme/weyye/hipermission/R$string;->permission_denied:I

    invoke-virtual {p0, v3}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    iget-object v4, p0, Lme/weyye/hipermission/PermissionActivity;->mAppName:Ljava/lang/CharSequence;

    aput-object v4, v5, v2

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "msg":Ljava/lang/String;
    sget v3, Lme/weyye/hipermission/R$string;->permission_cancel:I

    invoke-virtual {p0, v3}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    sget v3, Lme/weyye/hipermission/R$string;->permission_ensure:I

    invoke-virtual {p0, v3}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lme/weyye/hipermission/PermissionActivity$3;

    invoke-direct {v10, p0, p1}, Lme/weyye/hipermission/PermissionActivity$3;-><init>(Lme/weyye/hipermission/PermissionActivity;Ljava/lang/String;)V

    move-object v5, p0

    move-object v6, v1

    move-object v7, v2

    invoke-direct/range {v5 .. v10}, Lme/weyye/hipermission/PermissionActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 147
    return-void
.end method

.method private requestPermission([Ljava/lang/String;I)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "requestCode"    # I

    .line 150
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 151
    return-void
.end method

.method public static setCallBack(Lme/weyye/hipermission/PermissionCallback;)V
    .locals 0
    .param p0, "callBack"    # Lme/weyye/hipermission/PermissionCallback;

    .line 54
    sput-object p0, Lme/weyye/hipermission/PermissionActivity;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    .line 55
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "cancelTxt"    # Ljava/lang/String;
    .param p4, "PosTxt"    # Ljava/lang/String;
    .param p5, "onClickListener"    # Landroid/content/DialogInterface$OnClickListener;

    .line 154
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-virtual {v0, p1}, Landroid/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 156
    invoke-virtual {v0, p2}, Landroid/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 157
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lme/weyye/hipermission/PermissionActivity$4;

    invoke-direct {v1, p0}, Lme/weyye/hipermission/PermissionActivity$4;-><init>(Lme/weyye/hipermission/PermissionActivity;)V

    .line 158
    invoke-virtual {v0, p3, v1}, Landroid/support/v7/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, p4, p5}, Landroid/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->create()Landroid/support/v7/app/AlertDialog;

    move-result-object v0

    .line 166
    .local v0, "alertDialog":Landroid/support/v7/app/AlertDialog;
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog;->show()V

    .line 167
    return-void
.end method

.method private showPermissionDialog()V
    .locals 8

    .line 89
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->getPermissionTitle()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "title":Ljava/lang/String;
    iget-object v1, p0, Lme/weyye/hipermission/PermissionActivity;->mMsg:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    sget v1, Lme/weyye/hipermission/R$string;->permission_dialog_msg:I

    invoke-virtual {p0, v1}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lme/weyye/hipermission/PermissionActivity;->mAppName:Ljava/lang/CharSequence;

    aput-object v5, v4, v3

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lme/weyye/hipermission/PermissionActivity;->mMsg:Ljava/lang/String;

    .line 92
    .local v1, "msg":Ljava/lang/String;
    :goto_0
    new-instance v4, Lme/weyye/hipermission/PermissionView;

    invoke-direct {v4, p0}, Lme/weyye/hipermission/PermissionView;-><init>(Landroid/content/Context;)V

    .line 93
    .local v4, "contentView":Lme/weyye/hipermission/PermissionView;
    iget-object v5, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    iget-object v5, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    :cond_1
    invoke-virtual {v4, v6}, Lme/weyye/hipermission/PermissionView;->setGridViewColum(I)V

    .line 94
    invoke-virtual {v4, v0}, Lme/weyye/hipermission/PermissionView;->setTitle(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v4, v1}, Lme/weyye/hipermission/PermissionView;->setMsg(Ljava/lang/String;)V

    .line 97
    new-instance v5, Lme/weyye/hipermission/PermissionAdapter;

    iget-object v6, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-direct {v5, v6}, Lme/weyye/hipermission/PermissionAdapter;-><init>(Ljava/util/List;)V

    invoke-virtual {v4, v5}, Lme/weyye/hipermission/PermissionView;->setGridViewAdapter(Landroid/widget/ListAdapter;)V

    .line 98
    iget v5, p0, Lme/weyye/hipermission/PermissionActivity;->mStyleId:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 100
    sget v5, Lme/weyye/hipermission/R$style;->PermissionDefaultNormalStyle:I

    iput v5, p0, Lme/weyye/hipermission/PermissionActivity;->mStyleId:I

    .line 101
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v7, Lme/weyye/hipermission/R$color;->permissionColorGreen:I

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    iput v5, p0, Lme/weyye/hipermission/PermissionActivity;->mFilterColor:I

    .line 104
    :cond_2
    iget v5, p0, Lme/weyye/hipermission/PermissionActivity;->mStyleId:I

    invoke-virtual {v4, v5}, Lme/weyye/hipermission/PermissionView;->setStyleId(I)V

    .line 105
    iget v5, p0, Lme/weyye/hipermission/PermissionActivity;->mFilterColor:I

    invoke-virtual {v4, v5}, Lme/weyye/hipermission/PermissionView;->setFilterColor(I)V

    .line 106
    new-instance v5, Lme/weyye/hipermission/PermissionActivity$1;

    invoke-direct {v5, p0}, Lme/weyye/hipermission/PermissionActivity$1;-><init>(Lme/weyye/hipermission/PermissionActivity;)V

    invoke-virtual {v4, v5}, Lme/weyye/hipermission/PermissionView;->setBtnOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    new-instance v5, Landroid/app/Dialog;

    invoke-direct {v5, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    .line 116
    invoke-virtual {v5, v2}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 117
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 118
    iget v2, p0, Lme/weyye/hipermission/PermissionActivity;->mAnimStyleId:I

    if-eq v2, v6, :cond_3

    .line 119
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    iget v5, p0, Lme/weyye/hipermission/PermissionActivity;->mAnimStyleId:I

    invoke-virtual {v2, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 121
    :cond_3
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 122
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v2, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 123
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lme/weyye/hipermission/PermissionActivity$2;

    invoke-direct {v3, p0}, Lme/weyye/hipermission/PermissionActivity$2;-><init>(Lme/weyye/hipermission/PermissionActivity;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 132
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 133
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 269
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->finish()V

    .line 270
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lme/weyye/hipermission/PermissionActivity;->overridePendingTransition(II)V

    .line 271
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 280
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult--requestCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",resultCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PermissionActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v0, 0x6e

    if-ne p1, v0, :cond_2

    .line 283
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 285
    :cond_0
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->checkPermission()V

    .line 286
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 287
    const/4 v0, 0x0

    iput v0, p0, Lme/weyye/hipermission/PermissionActivity;->mRePermissionIndex:I

    .line 288
    iget-object v1, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionItem;

    iget-object v0, v0, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    invoke-direct {p0, v0}, Lme/weyye/hipermission/PermissionActivity;->reRequestPermission(Ljava/lang/String;)V

    goto :goto_0

    .line 290
    :cond_1
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->onFinish()V

    .line 294
    :cond_2
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 275
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->finish()V

    .line 276
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 67
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->getDatas()V

    .line 69
    iget v0, p0, Lme/weyye/hipermission/PermissionActivity;->mPermissionType:I

    sget v1, Lme/weyye/hipermission/PermissionActivity;->PERMISSION_TYPE_SINGLE:I

    if-ne v0, v1, :cond_2

    .line 71
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lme/weyye/hipermission/PermissionItem;

    iget-object v2, v2, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-direct {p0, v1, v0}, Lme/weyye/hipermission/PermissionActivity;->requestPermission([Ljava/lang/String;I)V

    goto :goto_1

    .line 72
    :cond_1
    :goto_0
    return-void

    .line 76
    :cond_2
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mAppName:Ljava/lang/CharSequence;

    .line 78
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->showPermissionDialog()V

    .line 80
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 59
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onDestroy()V

    .line 60
    const/4 v0, 0x0

    sput-object v0, Lme/weyye/hipermission/PermissionActivity;->mCallback:Lme/weyye/hipermission/PermissionCallback;

    .line 61
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 63
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 196
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 197
    const/4 v0, 0x1

    const/4 v7, 0x0

    if-eq p1, v0, :cond_7

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v3, 0x3

    if-eq p1, v3, :cond_0

    goto/16 :goto_4

    .line 227
    :cond_0
    aget v2, p3, v7

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 232
    :try_start_0
    aget-object v2, p2, v7

    invoke-direct {p0, v2}, Lme/weyye/hipermission/PermissionActivity;->getPermissionItem(Ljava/lang/String;)Lme/weyye/hipermission/PermissionItem;

    move-result-object v2

    iget-object v2, v2, Lme/weyye/hipermission/PermissionItem;->PermissionName:Ljava/lang/String;

    move-object v8, v2

    .line 233
    .local v8, "name":Ljava/lang/String;
    sget v2, Lme/weyye/hipermission/R$string;->permission_title:I

    invoke-virtual {p0, v2}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v8, v4, v7

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "title":Ljava/lang/String;
    sget v4, Lme/weyye/hipermission/R$string;->permission_denied_with_naac:I

    invoke-virtual {p0, v4}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lme/weyye/hipermission/PermissionActivity;->mAppName:Ljava/lang/CharSequence;

    aput-object v5, v3, v7

    aput-object v8, v3, v0

    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mAppName:Ljava/lang/CharSequence;

    aput-object v0, v3, v1

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 235
    .local v3, "msg":Ljava/lang/String;
    sget v0, Lme/weyye/hipermission/R$string;->permission_reject:I

    invoke-virtual {p0, v0}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget v0, Lme/weyye/hipermission/R$string;->permission_go_to_setting:I

    invoke-virtual {p0, v0}, Lme/weyye/hipermission/PermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lme/weyye/hipermission/PermissionActivity$5;

    invoke-direct {v6, p0}, Lme/weyye/hipermission/PermissionActivity$5;-><init>(Lme/weyye/hipermission/PermissionActivity;)V

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lme/weyye/hipermission/PermissionActivity;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    .line 248
    aget-object v0, p2, v7

    invoke-direct {p0, v0, v7}, Lme/weyye/hipermission/PermissionActivity;->onDeny(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "title":Ljava/lang/String;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v8    # "name":Ljava/lang/String;
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 251
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->onClose()V

    .line 252
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    goto/16 :goto_4

    .line 254
    :cond_1
    aget-object v1, p2, v7

    invoke-direct {p0, v1, v7}, Lme/weyye/hipermission/PermissionActivity;->onGuarantee(Ljava/lang/String;I)V

    .line 255
    iget v1, p0, Lme/weyye/hipermission/PermissionActivity;->mRePermissionIndex:I

    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    if-ge v1, v2, :cond_2

    .line 257
    iget-object v1, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    iget v2, p0, Lme/weyye/hipermission/PermissionActivity;->mRePermissionIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lme/weyye/hipermission/PermissionActivity;->mRePermissionIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionItem;

    iget-object v0, v0, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    invoke-direct {p0, v0}, Lme/weyye/hipermission/PermissionActivity;->reRequestPermission(Ljava/lang/String;)V

    goto :goto_4

    .line 260
    :cond_2
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->onFinish()V

    goto :goto_4

    .line 208
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p3

    if-ge v0, v1, :cond_5

    .line 210
    aget v1, p3, v0

    if-nez v1, :cond_4

    .line 211
    aget-object v1, p2, v0

    invoke-direct {p0, v1}, Lme/weyye/hipermission/PermissionActivity;->getPermissionItem(Ljava/lang/String;)Lme/weyye/hipermission/PermissionItem;

    move-result-object v1

    .line 212
    .local v1, "item":Lme/weyye/hipermission/PermissionItem;
    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 213
    aget-object v2, p2, v0

    invoke-direct {p0, v2, v0}, Lme/weyye/hipermission/PermissionActivity;->onGuarantee(Ljava/lang/String;I)V

    .line 214
    .end local v1    # "item":Lme/weyye/hipermission/PermissionItem;
    goto :goto_2

    .line 216
    :cond_4
    aget-object v1, p2, v0

    invoke-direct {p0, v1, v0}, Lme/weyye/hipermission/PermissionActivity;->onDeny(Ljava/lang/String;I)V

    .line 208
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 219
    .end local v0    # "i":I
    :cond_5
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 221
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity;->mCheckPermissions:Ljava/util/List;

    iget v1, p0, Lme/weyye/hipermission/PermissionActivity;->mRePermissionIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lme/weyye/hipermission/PermissionItem;

    iget-object v0, v0, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    invoke-direct {p0, v0}, Lme/weyye/hipermission/PermissionActivity;->reRequestPermission(Ljava/lang/String;)V

    goto :goto_4

    .line 223
    :cond_6
    invoke-direct {p0}, Lme/weyye/hipermission/PermissionActivity;->onFinish()V

    .line 225
    goto :goto_4

    .line 199
    :cond_7
    aget-object v0, p2, v7

    invoke-direct {p0, v0}, Lme/weyye/hipermission/PermissionActivity;->getPermissionItem(Ljava/lang/String;)Lme/weyye/hipermission/PermissionItem;

    move-result-object v0

    iget-object v0, v0, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    .line 200
    .local v0, "permission":Ljava/lang/String;
    aget v1, p3, v7

    if-nez v1, :cond_8

    .line 201
    invoke-direct {p0, v0, v7}, Lme/weyye/hipermission/PermissionActivity;->onGuarantee(Ljava/lang/String;I)V

    goto :goto_3

    .line 203
    :cond_8
    invoke-direct {p0, v0, v7}, Lme/weyye/hipermission/PermissionActivity;->onDeny(Ljava/lang/String;I)V

    .line 205
    :goto_3
    invoke-virtual {p0}, Lme/weyye/hipermission/PermissionActivity;->finish()V

    .line 206
    nop

    .line 265
    .end local v0    # "permission":Ljava/lang/String;
    :goto_4
    return-void
.end method
