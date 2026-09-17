.class Lcom/isaigu/gymapp/beta/MusicReactiveController$PermissionCallback;
.super Ljava/lang/Object;
.source "MusicReactiveController.java"

# interfaces
.implements Lcom/isaigu/gymapp/utils/AndroidUtils$RequestPermissionCallback;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestPermission(Ljava/lang/String;IZ)V
    .locals 0
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "requestCode"    # I
    .param p3, "granted"    # Z

    if-eqz p3, :cond_end

    invoke-static {}, Lcom/isaigu/gymapp/beta/MusicReactiveController;->access$400()V

    :cond_end
    return-void
.end method
