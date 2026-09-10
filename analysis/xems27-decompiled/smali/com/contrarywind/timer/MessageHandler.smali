.class public final Lcom/contrarywind/timer/MessageHandler;
.super Landroid/os/Handler;
.source "MessageHandler.java"


# static fields
.field public static final WHAT_INVALIDATE_LOOP_VIEW:I = 0x3e8

.field public static final WHAT_ITEM_SELECTED:I = 0xbb8

.field public static final WHAT_SMOOTH_SCROLL:I = 0x7d0


# instance fields
.field private final wheelView:Lcom/contrarywind/view/WheelView;


# direct methods
.method public constructor <init>(Lcom/contrarywind/view/WheelView;)V
    .locals 0
    .param p1, "wheelView"    # Lcom/contrarywind/view/WheelView;

    .line 21
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/contrarywind/timer/MessageHandler;->wheelView:Lcom/contrarywind/view/WheelView;

    .line 23
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 27
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_1

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/contrarywind/timer/MessageHandler;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->onItemSelected()V

    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/contrarywind/timer/MessageHandler;->wheelView:Lcom/contrarywind/view/WheelView;

    sget-object v1, Lcom/contrarywind/view/WheelView$ACTION;->FLING:Lcom/contrarywind/view/WheelView$ACTION;

    invoke-virtual {v0, v1}, Lcom/contrarywind/view/WheelView;->smoothScroll(Lcom/contrarywind/view/WheelView$ACTION;)V

    .line 34
    goto :goto_0

    .line 29
    :cond_2
    iget-object v0, p0, Lcom/contrarywind/timer/MessageHandler;->wheelView:Lcom/contrarywind/view/WheelView;

    invoke-virtual {v0}, Lcom/contrarywind/view/WheelView;->invalidate()V

    .line 30
    nop

    .line 40
    :goto_0
    return-void
.end method
