.class final Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Feel;
.super Ljava/lang/Object;
.source "VrHitPanel.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Feel"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 3

    .prologue
    .line 159
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$000()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->setMastogoFeel(Landroid/content/Context;I)V

    .line 160
    return-void
.end method
