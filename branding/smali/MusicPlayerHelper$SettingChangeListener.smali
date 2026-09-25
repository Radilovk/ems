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
    .locals 0

    .prologue
    .line 1902
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1903
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    .line 1904
    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 1908
    iget v0, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    packed-switch v0, :pswitch_data_0

    .line 1925
    :pswitch_0
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    .line 1928
    :goto_0
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$600()V

    .line 1929
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 1930
    return-void

    .line 1910
    :pswitch_1
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    goto :goto_0

    .line 1913
    :pswitch_2
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    goto :goto_0

    .line 1916
    :pswitch_3
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    goto :goto_0

    .line 1919
    :pswitch_4
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzBass(I)V

    goto :goto_0

    .line 1922
    :pswitch_5
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    goto :goto_0

    .line 1908
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
