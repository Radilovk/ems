.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ControlRemove"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 374
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;->a:Landroid/app/Activity;

    .line 376
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;->root:Landroid/view/View;

    .line 377
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    .prologue
    .line 381
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setControlBand(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/NotifyWearableBridge;->onControlBandChanged(Landroid/content/Context;)V

    .line 383
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlRemove;->root:Landroid/view/View;

    # invokes: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$500(Landroid/app/Activity;Landroid/view/View;)V

    .line 384
    return-void
.end method
