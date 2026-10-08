.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$Toggle;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnToggle;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Toggle"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onToggle(Z)V
    .registers 4

    .prologue
    .line 457
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$800()Landroid/app/Activity;

    move-result-object v1

    if-nez p1, :cond_b

    const/4 v0, 0x1

    :goto_7
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setPaused(Landroid/content/Context;Z)V

    .line 458
    return-void

    .line 457
    :cond_b
    const/4 v0, 0x0

    goto :goto_7
.end method
