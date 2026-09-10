.class public Lme/weyye/hipermission/PermissionItem;
.super Ljava/lang/Object;
.source "PermissionItem.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public Permission:Ljava/lang/String;

.field public PermissionIconRes:I

.field public PermissionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "permissionName"    # Ljava/lang/String;
    .param p3, "permissionIconRes"    # I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lme/weyye/hipermission/PermissionItem;->Permission:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lme/weyye/hipermission/PermissionItem;->PermissionName:Ljava/lang/String;

    .line 17
    iput p3, p0, Lme/weyye/hipermission/PermissionItem;->PermissionIconRes:I

    .line 18
    return-void
.end method
