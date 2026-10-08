.class final Lcom/isaigu/gymapp/wearable/vr/VrMainCall;
.super Ljava/lang/Object;
.source "VrMainCall.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field static final LINK:I = 0x1

.field static final SETTINGS:I = 0x2

.field static final TICK:I


# instance fields
.field private final app:Ljava/lang/String;

.field private final op:I

.field private final up:Z


# direct methods
.method constructor <init>(IZLjava/lang/String;)V
    .registers 4

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;->op:I

    .line 15
    iput-boolean p2, p0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;->up:Z

    .line 16
    iput-object p3, p0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;->app:Ljava/lang/String;

    .line 17
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 21
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;->op:I

    if-nez v0, :cond_8

    .line 22
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->tick()V

    .line 28
    :goto_7
    return-void

    .line 23
    :cond_8
    iget v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;->op:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 24
    invoke-static {}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->onSettingsChanged()V

    goto :goto_7

    .line 26
    :cond_11
    iget-boolean v0, p0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;->up:Z

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/vr/VrMainCall;->app:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/isaigu/gymapp/wearable/vr/VrDrive;->link(ZLjava/lang/String;)V

    goto :goto_7
.end method
