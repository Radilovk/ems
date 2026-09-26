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

    .line 1998
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1999
    iput p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    .line 2000
    return-void
.end method


# virtual methods
.method public onAmountChange(Landroid/view/View;I)V
    .registers 4

    .line 2004
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setAutoTune(Z)V

    .line 2005
    iget p1, p0, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper$SettingChangeListener;->which:I

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_24

    const/4 v0, 0x2

    if-eq p1, v0, :cond_20

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1c

    const/4 v0, 0x5

    if-eq p1, v0, :cond_18

    .line 2022
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSmoothness(I)V

    goto :goto_2c

    .line 2019
    :cond_18
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzTreble(I)V

    .line 2020
    goto :goto_2c

    .line 2016
    :cond_1c
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setHzBass(I)V

    .line 2017
    goto :goto_2c

    .line 2013
    :cond_20
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setFloorPercent(I)V

    .line 2014
    goto :goto_2c

    .line 2010
    :cond_24
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setRhythmMix(I)V

    .line 2011
    goto :goto_2c

    .line 2007
    :cond_28
    invoke-static {p2}, Lcom/isaigu/gymapp/train/utils/MusicSync;->setSensitivity(I)V

    .line 2008
    nop

    .line 2025
    :goto_2c
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->persistSettings()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$500()V

    .line 2026
    # invokes: Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->refreshPresetHighlight()V
    invoke-static {}, Lcom/isaigu/gymapp/dialog/MusicPlayerHelper;->access$700()V

    .line 2027
    return-void
.end method
