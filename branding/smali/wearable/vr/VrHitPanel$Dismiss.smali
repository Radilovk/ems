.class final Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Dismiss;
.super Ljava/lang/Object;
.source "VrHitPanel.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;
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
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Dismiss;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 189
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 193
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$100()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Dismiss;->s:Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    if-ne v0, v1, :cond_1b

    .line 194
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$102(Lcom/isaigu/gymapp/widget/XemsUi$Shell;)Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    .line 195
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sPct:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$202(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 196
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sHz:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$302(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 197
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sDepth:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$402(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 198
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMLevel:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$502(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 199
    # setter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->sMMs:Lcom/isaigu/gymapp/widget/XemsUi$Stepper;
    invoke-static {v2}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$602(Lcom/isaigu/gymapp/widget/XemsUi$Stepper;)Lcom/isaigu/gymapp/widget/XemsUi$Stepper;

    .line 201
    :cond_1b
    return-void
.end method
