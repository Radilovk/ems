.class final Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;
.super Ljava/lang/Object;
.source "NotifyWearableBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SettingsReconnectTask"
.end annotation


# instance fields
.field activity:Landroid/app/Activity;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 221
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->access$400(Landroid/app/Activity;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge$SettingsReconnectTask;->activity:Landroid/app/Activity;

    .line 226
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    const-string v1, "NotifyWearableBridge.settingsReconnect"

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/widget/XemsGuard;->report(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
