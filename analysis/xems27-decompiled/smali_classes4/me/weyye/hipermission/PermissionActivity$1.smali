.class Lme/weyye/hipermission/PermissionActivity$1;
.super Ljava/lang/Object;
.source "PermissionActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/weyye/hipermission/PermissionActivity;->showPermissionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lme/weyye/hipermission/PermissionActivity;


# direct methods
.method constructor <init>(Lme/weyye/hipermission/PermissionActivity;)V
    .locals 0
    .param p1, "this$0"    # Lme/weyye/hipermission/PermissionActivity;

    .line 106
    iput-object p1, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 109
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {v0}, Lme/weyye/hipermission/PermissionActivity;->access$000(Lme/weyye/hipermission/PermissionActivity;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {v0}, Lme/weyye/hipermission/PermissionActivity;->access$000(Lme/weyye/hipermission/PermissionActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {v0}, Lme/weyye/hipermission/PermissionActivity;->access$000(Lme/weyye/hipermission/PermissionActivity;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    :cond_0
    iget-object v0, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    invoke-static {v0}, Lme/weyye/hipermission/PermissionActivity;->access$100(Lme/weyye/hipermission/PermissionActivity;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "strs":[Ljava/lang/String;
    iget-object v1, p0, Lme/weyye/hipermission/PermissionActivity$1;->this$0:Lme/weyye/hipermission/PermissionActivity;

    const/4 v2, 0x2

    invoke-static {v1, v0, v2}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 113
    return-void
.end method
