.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlPick;
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
    name = "ControlPick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 361
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlPick;->a:Landroid/app/Activity;

    .line 362
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 366
    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 367
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$ControlPick;->a:Landroid/app/Activity;

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->ctlMacView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$400()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->showForControl(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 369
    :cond_f
    return-void
.end method
