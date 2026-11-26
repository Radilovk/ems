.class final Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;
.super Ljava/lang/Object;
.source "VrHitPanel.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/XemsUi$OnStep;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Adj"
.end annotation


# static fields
.field static final DEPTH:I = 0x2

.field static final HZ:I = 0x1

.field static final MLEVEL:I = 0x3

.field static final MMS:I = 0x4

.field static final PCT:I


# instance fields
.field private final what:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;->what:I

    .line 130
    return-void
.end method


# virtual methods
.method public onStep(I)V
    .registers 6

    .prologue
    const/16 v3, 0x64

    const/16 v0, 0x32

    .line 134
    # getter for: Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->activity:Landroid/app/Activity;
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->access$000()Landroid/app/Activity;

    move-result-object v1

    .line 135
    iget v2, p0, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel$Adj;->what:I

    packed-switch v2, :pswitch_data_56

    .line 149
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mastogoMs()I

    move-result v2

    .line 150
    if-lt v2, v3, :cond_17

    if-ne v2, v3, :cond_19

    if-gez p1, :cond_19

    :cond_17
    const/16 v0, 0xa

    :cond_19
    mul-int/2addr v0, p1

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->setMastogoMs(Landroid/content/Context;I)V

    .line 152
    :goto_1e
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitPanel;->show()V

    .line 153
    return-void

    .line 137
    :pswitch_22
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->pct()I

    move-result v0

    mul-int/lit8 v2, p1, 0x5

    add-int/2addr v0, v2

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->setPct(Landroid/content/Context;I)V

    goto :goto_1e

    .line 140
    :pswitch_2d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->hz()I

    move-result v0

    invoke-static {v0, p1}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->nextHz(II)I

    move-result v0

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->setHz(Landroid/content/Context;I)V

    goto :goto_1e

    .line 143
    :pswitch_39
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth()I

    move-result v2

    if-nez v2, :cond_45

    if-lez p1, :cond_45

    :goto_41
    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->setDepth(Landroid/content/Context;I)V

    goto :goto_1e

    :cond_45
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->depth()I

    move-result v0

    mul-int/lit8 v2, p1, 0x32

    add-int/2addr v0, v2

    goto :goto_41

    .line 146
    :pswitch_4d
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->mastogoLevel()I

    move-result v0

    add-int/2addr v0, p1

    invoke-static {v1, v0}, Lcom/isaigu/gymapp/wearable/vr/VrHitSettings;->setMastogoLevel(Landroid/content/Context;I)V

    goto :goto_1e

    .line 135
    :pswitch_data_56
    .packed-switch 0x0
        :pswitch_22
        :pswitch_2d
        :pswitch_39
        :pswitch_4d
    .end packed-switch
.end method
