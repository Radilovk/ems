.class final Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;
.super Ljava/lang/Object;
.source "MusicPlayerHelper.java"

# interfaces
.implements Lcom/isaigu/gymapp/widget/AmountView$OnAmountChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SettingChangeListener"
.end annotation


# static fields
.field static final FLOOR:I = 0x2

.field static final RHYTHM:I = 0x1

.field static final SENSITIVITY:I = 0x0

.field static final SMOOTH:I = 0x3


# instance fields
.field private final which:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .prologue
    .line 1521
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1522
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    .line 1523
    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 1527
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    packed-switch v0, :pswitch_data_1c

    .line 1538
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 1541
    :goto_8
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1200()V

    .line 1542
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$1300()V

    .line 1543
    return-void

    .line 1529
    :pswitch_f
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    goto :goto_8

    .line 1532
    :pswitch_13
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    goto :goto_8

    .line 1535
    :pswitch_17
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    goto :goto_8

    .line 1527
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
