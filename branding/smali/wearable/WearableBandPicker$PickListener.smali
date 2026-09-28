.class final Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;
.super Ljava/lang/Object;
.source "WearableBandPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableBandPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PickListener"
.end annotation


# instance fields
.field private final mac:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    .line 191
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 195
    # getter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$100()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    .line 196
    # getter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$100()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2c

    # getter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->forControl:Z
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$200()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 199
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 202
    :cond_2c
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$102(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 203
    # invokes: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->close()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$300()V

    .line 204
    return-void
.end method
