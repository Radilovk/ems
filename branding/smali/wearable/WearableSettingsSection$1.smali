.class Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->build(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 94
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;->val$a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$1;->val$a:Landroid/app/Activity;

    # getter for: Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->macView:Landroid/widget/EditText;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->access$000()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/WearableBandPicker;->show(Landroid/app/Activity;Landroid/widget/EditText;)V

    .line 98
    return-void
.end method
