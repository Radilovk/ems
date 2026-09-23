.class final Lcom/isaigu/gymapp/wearable/WearableSyncHelper$ArmAfterPermission;
.super Ljava/lang/Object;
.source "WearableSyncHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ArmAfterPermission"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 897
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 900
    const/4 v0, 0x0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->resolveActivity(Landroid/view/View;)Landroid/app/Activity;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$000(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->finishArm(Landroid/app/Activity;)V
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->access$900(Landroid/app/Activity;)V

    .line 901
    return-void
.end method
