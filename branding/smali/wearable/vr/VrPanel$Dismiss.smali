.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$Dismiss;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dismiss"
.end annotation


# instance fields
.field private final s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)V
    .registers 2

    .prologue
    .line 358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Dismiss;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 360
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 364
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$300()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Dismiss;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-ne v0, v1, :cond_1e

    .line 365
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$302(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 366
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->refresh:Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$002(Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;)Lcom/isaigu/gymapp/wearable/vr/VrPanel$Refresh;

    .line 367
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->feel:Landroid/widget/LinearLayout;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$402(Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 368
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->floorStepper:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$502(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 369
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->heroRow:Landroid/view/View;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$602(Landroid/view/View;)Landroid/view/View;

    .line 370
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->levelBox:Landroid/view/View;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$702(Landroid/view/View;)Landroid/view/View;

    .line 371
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$802(Landroid/app/Activity;)Landroid/app/Activity;

    .line 373
    :cond_1e
    return-void
.end method
