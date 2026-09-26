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

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    .line 182
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 186
    # getter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$100()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 187
    # getter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$100()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableUi;->asActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    .line 189
    if-eqz p1, :cond_26

    .line 190
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/isaigu/gymapp/wearable/WearableConfig;->setBandMac(Landroid/content/Context;Ljava/lang/String;)V

    .line 193
    :cond_26
    const/4 p1, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {p1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$102(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 194
    # invokes: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->close()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$200()V

    .line 195
    return-void
.end method
