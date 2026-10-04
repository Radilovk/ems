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
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    .line 187
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 191
    # getter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$100()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_17

    .line 192
    # getter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$100()Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableBandPicker$PickListener;->mac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :cond_17
    const/4 v0, 0x0

    # setter for: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->target:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$102(Landroid/widget/EditText;)Landroid/widget/EditText;

    .line 195
    # invokes: Lcom/isaigu/gymapp/wearable/WearableBandPicker;->close()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->access$200()V

    .line 196
    return-void
.end method
