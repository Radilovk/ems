.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;
.super Ljava/lang/Object;
.source "WearableSettingsSection.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "XiaomiPick"
.end annotation


# instance fields
.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1723
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;->this$0:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1724
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;->list:Ljava/util/List;

    .line 1725
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 1729
    if-ltz p2, :cond_17

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_17

    .line 1730
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;->this$0:Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply$XiaomiPick;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;

    invoke-virtual {v1, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$XiaomiApply;->apply(Lcom/isaigu/gymapp/wearable/xiaomi/XiaomiCloudAccount$Band;)V

    .line 1732
    :cond_17
    return-void
.end method
