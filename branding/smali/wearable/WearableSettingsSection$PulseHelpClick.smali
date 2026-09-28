.class final Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PulseHelpClick;
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
    name = "PulseHelpClick"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PulseHelpClick;->a:Landroid/app/Activity;

    .line 265
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/WearableSettingsSection$PulseHelpClick;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/WearableSyncHelper;->showHelp(Landroid/app/Activity;)V

    .line 270
    return-void
.end method
