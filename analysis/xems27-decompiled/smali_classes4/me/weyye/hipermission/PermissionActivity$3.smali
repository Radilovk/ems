.class Lme/weyye/hipermission/PermissionActivity$3;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->reRequestPermission(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/weyye/hipermission/PermissionActivity;

.field final synthetic val$permission:Ljava/lang/String;


# direct methods
.method constructor <init>(Lme/weyye/hipermission/PermissionActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lme/weyye/hipermission/PermissionActivity;

    .line 140
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$3;->this$0:Lme/weyye/hipermission/PermissionActivity;

    iput-object p2, p0, Lme/weyye/hipermission/PermissionActivity$3;->val$permission:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 143
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 144
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$3;->this$0:Lme/weyye/hipermission/PermissionActivity;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lme/weyye/hipermission/PermissionActivity$3;->val$permission:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Lme/weyye/hipermission/PermissionActivity;->access$300(Lme/weyye/hipermission/PermissionActivity;[Ljava/lang/String;I)V

    .line 145
    return-void
.end method
