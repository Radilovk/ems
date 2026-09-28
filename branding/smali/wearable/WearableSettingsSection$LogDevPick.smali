.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;
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
    name = "LogDevPick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;->a:Landroid/app/Activity;

    .line 976
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;->root:Landroid/view/View;

    .line 977
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;->list:Ljava/util/List;

    .line 978
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6

    .prologue
    .line 982
    if-ltz p2, :cond_19

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_19

    .line 983
    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;->a:Landroid/app/Activity;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;->root:Landroid/view/View;

    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$LogDevPick;->list:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;

    invoke-static {v1, v2, v0}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection;->applyDev(Landroid/app/Activity;Landroid/view/View;Lcom/isaigu/gymapp/wearable/xiaomi/MiFitnessLogImport$Dev;)V

    .line 985
    :cond_19
    return-void
.end method
