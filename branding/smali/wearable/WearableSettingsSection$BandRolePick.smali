.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "BandRolePick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final bandApp:Z

.field private final key:Ljava/lang/String;

.field private final mac:Ljava/lang/String;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 420
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->a:Landroid/app/Activity;

    .line 422
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->root:Landroid/view/View;

    .line 423
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->mac:Ljava/lang/String;

    .line 424
    iput-object p4, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->key:Ljava/lang/String;

    .line 425
    iput-boolean p5, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->bandApp:Z

    .line 426
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 6

    .prologue
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 432
    if-nez p1, :cond_21

    .line 433
    const/4 v2, -0x1

    .line 440
    :cond_6
    :goto_6
    :try_start_6
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->mac:Ljava/lang/String;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->key:Ljava/lang/String;

    invoke-static {v0, v1, v3, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->assignBandRole(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 441
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onControlBandChanged(Landroid/content/Context;)V

    .line 442
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRoleChanged(Landroid/content/Context;)V

    .line 443
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$100(Landroid/app/Activity;Landroid/view/View;)V

    .line 447
    :goto_20
    return-void

    .line 434
    :cond_21
    iget-boolean v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$BandRolePick;->bandApp:Z
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_23} :catch_2f

    if-eqz v3, :cond_6

    .line 437
    if-ne p1, v1, :cond_29

    :goto_27
    move v2, v0

    .line 438
    goto :goto_6

    :cond_29
    if-ne p1, v0, :cond_2d

    move v0, v1

    goto :goto_27

    :cond_2d
    move v0, v2

    goto :goto_27

    .line 444
    :catch_2f
    move-exception v0

    .line 445
    const-string v1, "WearableSettingsSection.role"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20
.end method
