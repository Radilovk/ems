.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ForgetConfirm"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final mac:Ljava/lang/String;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 369
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 370
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->a:Landroid/app/Activity;

    .line 371
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->root:Landroid/view/View;

    .line 372
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->mac:Ljava/lang/String;

    .line 373
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->mac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->forgetBand(Landroid/content/Context;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onControlBandChanged(Landroid/content/Context;)V

    .line 380
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onRoleChanged(Landroid/content/Context;)V

    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ForgetConfirm;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$100(Landroid/app/Activity;Landroid/view/View;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_18} :catch_19

    .line 385
    :goto_18
    return-void

    .line 382
    :catch_19
    move-exception v0

    .line 383
    const-string v1, "WearableSettingsSection.forget"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_18
.end method
