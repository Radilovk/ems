.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;
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
    name = "OpenOnBand"
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 713
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;->activity:Landroid/app/Activity;

    .line 714
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 718
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$OpenOnBand;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/BandLaunch;->request(Landroid/app/Activity;)V

    .line 719
    return-void
.end method
