.class final Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Test;
.super Ljava/lang/Object;
.source "VrHitPanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Test"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 166
    invoke-static {p1}, Lcom/isaigu/gymapp/widget/XemsUi;->haptic(Landroid/view/View;)V

    .line 167
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrZoneRouter;->test()V

    .line 168
    return-void
.end method
