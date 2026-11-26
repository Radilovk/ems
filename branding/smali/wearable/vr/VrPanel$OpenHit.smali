.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$OpenHit;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "OpenHit"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 446
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$800()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->open(Landroid/app/Activity;)V

    .line 447
    return-void
.end method
