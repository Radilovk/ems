.class final Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Done;
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
    name = "Done"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 174
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->shell:Lcom/isaigu/gymapp/widget/XemsUi$Shell;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$100()Lcom/isaigu/gymapp/widget/XemsUi$Shell;

    move-result-object v0

    .line 175
    if-eqz v0, :cond_b

    .line 177
    :try_start_6
    iget-object v0, v0, Lcom/isaigu/gymapp/widget/XemsUi$Shell;->dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_b} :catch_c

    .line 181
    :cond_b
    :goto_b
    return-void

    .line 178
    :catch_c
    move-exception v0

    goto :goto_b
.end method
