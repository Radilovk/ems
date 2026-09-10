.class public abstract Lcom/isaigu/gymapp/widget/NoDoubleClickListener;
.super Ljava/lang/Object;
.source "NoDoubleClickListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final MIN_CLICK_DELAY_TIME:I = 0xc8


# instance fields
.field private lastClickTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;->lastClickTime:J

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 16
    .local v0, "currentTime":J
    iget-wide v2, p0, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xc8

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 17
    iput-wide v0, p0, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;->lastClickTime:J

    .line 18
    invoke-virtual {p0, p1}, Lcom/isaigu/gymapp/widget/NoDoubleClickListener;->onNoDoubleClick(Landroid/view/View;)V

    .line 20
    :cond_0
    return-void
.end method

.method public abstract onNoDoubleClick(Landroid/view/View;)V
.end method
