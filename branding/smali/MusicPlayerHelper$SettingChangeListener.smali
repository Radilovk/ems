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
    .line 1899
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1900
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    .line 1901
    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 1905
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    packed-switch v0, :pswitch_data_1c

    .line 1916
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 1919
    :goto_8
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()V

    .line 1920
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 1921
    return-void

    .line 1907
    :pswitch_f
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    goto :goto_8

    .line 1910
    :pswitch_13
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    goto :goto_8

    .line 1913
    :pswitch_17
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    goto :goto_8

    .line 1905
    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_f
        :pswitch_13
        :pswitch_17
    .end packed-switch
.end method
