.class public interface abstract Lcom/isaigu/gymapp/wearable/face/FaceDevice;
.super Ljava/lang/Object;
.source "FaceDevice.java"


# static fields
.field public static final BLUETENS:I = 0x1

.field public static final XEMS:I


# virtual methods
.method public abstract active()Z
.end method

.method public abstract battery(I)I
.end method

.method public abstract canPause()Z
.end method

.method public abstract canStart()Z
.end method

.method public abstract cancel()V
.end method

.method public abstract channelName(IZ)Ljava/lang/String;
.end method

.method public abstract channels()I
.end method

.method public abstract clientName()Ljava/lang/String;
.end method

.method public abstract courseKey()Ljava/lang/String;
.end method

.method public abstract doneShare()D
.end method

.method public abstract finished()Z
.end method

.method public abstract hasMaster()Z
.end method

.method public abstract kind()I
.end method

.method public abstract level(IJ)F
.end method

.method public abstract maxStrength()I
.end method

.method public abstract notReady(IZ)Ljava/lang/String;
.end method

.method public abstract pause()V
.end method

.method public abstract paused()Z
.end method

.method public abstract phases()[J
.end method

.method public abstract prepare(IIZ)Ljava/lang/String;
.end method

.method public abstract programs()[I
.end method

.method public abstract running()Z
.end method

.method public abstract select(I)V
.end method

.method public abstract siteOf(I)I
.end method

.method public abstract socket(I)Ljava/lang/String;
.end method

.method public abstract start(Landroid/content/Context;)V
.end method

.method public abstract state(J)Lcom/isaigu/gymapp/wearable/face/FaceTimeline$State;
.end method

.method public abstract step(II)V
.end method

.method public abstract stop()V
.end method

.method public abstract stopLabel(Z)Ljava/lang/String;
.end method

.method public abstract strength(I)I
.end method
