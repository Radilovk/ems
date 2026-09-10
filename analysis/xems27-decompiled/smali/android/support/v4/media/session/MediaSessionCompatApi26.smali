.class Landroid/support/v4/media/session/MediaSessionCompatApi26;
.super Ljava/lang/Object;
.source "MediaSessionCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaSessionCompatApi26$CallbackProxy;,
        Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;)Ljava/lang/Object;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;

    .line 24
    new-instance v0, Landroid/support/v4/media/session/MediaSessionCompatApi26$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaSessionCompatApi26$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;)V

    return-object v0
.end method

.method public static setRepeatMode(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "repeatMode"    # I

    .line 28
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setRepeatMode(I)V

    .line 29
    return-void
.end method

.method public static setShuffleModeEnabled(Ljava/lang/Object;Z)V
    .locals 1
    .param p0, "sessionObj"    # Ljava/lang/Object;
    .param p1, "enabled"    # Z

    .line 32
    move-object v0, p0

    check-cast v0, Landroid/media/session/MediaSession;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaSession;->setShuffleModeEnabled(Z)V

    .line 33
    return-void
.end method
