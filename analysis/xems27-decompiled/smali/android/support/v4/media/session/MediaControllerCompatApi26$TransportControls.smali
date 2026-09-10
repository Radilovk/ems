.class public Landroid/support/v4/media/session/MediaControllerCompatApi26$TransportControls;
.super Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;
.source "MediaControllerCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;-><init>()V

    return-void
.end method

.method public static setRepeatMode(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "repeatMode"    # I

    .line 36
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$TransportControls;->setRepeatMode(I)V

    .line 37
    return-void
.end method

.method public static setShuffleModeEnabled(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "controlsObj"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z

    .line 40
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController$TransportControls;->setShuffleModeEnabled(Z)V

    .line 41
    return-void
.end method
