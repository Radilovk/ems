.class final Lcom/isaigu/gymapp/ai/MapRunner$StopClick;
.super Ljava/lang/Object;
.source "MapRunner.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/MapRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StopClick"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .prologue
    .line 612
    invoke-static {}, Lcom/isaigu/gymapp/ai/MapRunner;->stop()V

    .line 613
    return-void
.end method
