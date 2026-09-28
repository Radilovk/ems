.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;
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
    name = "PairClick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final root:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/view/View;)V
    .registers 3

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;->a:Landroid/app/Activity;

    .line 310
    iput-object p2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;->root:Landroid/view/View;

    .line 311
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6

    .prologue
    .line 315
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;->a:Landroid/app/Activity;

    new-instance v1, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;

    iget-object v2, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PairClick;->root:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$Rebuild;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/BandPairing;->show(Landroid/app/Activity;Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method
