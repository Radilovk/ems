.class final Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;
.super Ljava/lang/Object;
.source "VrPanel.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnIndex;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Pick"
.end annotation


# static fields
.field static final SENS:I = 0x0

.field static final SMOOTH:I = 0x1


# instance fields
.field private final what:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 411
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;->what:I

    .line 413
    return-void
.end method


# virtual methods
.method public onIndex(I)V
    .registers 4

    .prologue
    .line 417
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$800()Landroid/app/Activity;

    move-result-object v0

    .line 418
    iget v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrPanel$Pick;->what:I

    if-nez v1, :cond_f

    .line 419
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setSensitivity(Landroid/content/Context;I)V

    .line 423
    :goto_b
    # invokes: Lcom/isaigu/gymapp/wearable/vr/VrPanel;->fillFeel()V
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrPanel;->access$900()V

    .line 424
    return-void

    .line 421
    :cond_f
    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrSettings;->setSmoothIndex(Landroid/content/Context;I)V

    goto :goto_b
.end method
