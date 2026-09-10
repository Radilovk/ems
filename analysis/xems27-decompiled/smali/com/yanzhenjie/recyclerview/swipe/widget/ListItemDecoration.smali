.class public Lcom/yanzhenjie/recyclerview/swipe/widget/ListItemDecoration;
.super Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;
.source "ListItemDecoration.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "color"    # I

    .line 32
    invoke-direct {p0, p1}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(I)V

    .line 33
    return-void
.end method

.method public varargs constructor <init>(III[I)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "dividerWidth"    # I
    .param p3, "dividerHeight"    # I
    .param p4, "excludeViewType"    # [I

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/yanzhenjie/recyclerview/swipe/widget/DefaultItemDecoration;-><init>(III[I)V

    .line 37
    return-void
.end method
