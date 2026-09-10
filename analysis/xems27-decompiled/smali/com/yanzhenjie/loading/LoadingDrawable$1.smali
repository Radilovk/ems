.class Lcom/yanzhenjie/loading/LoadingDrawable$1;
.super Ljava/lang/Object;
.source "LoadingDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/loading/LoadingDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yanzhenjie/loading/LoadingDrawable;


# direct methods
.method constructor <init>(Lcom/yanzhenjie/loading/LoadingDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lcom/yanzhenjie/loading/LoadingDrawable;

    .line 33
    iput-object p1, p0, Lcom/yanzhenjie/loading/LoadingDrawable$1;->this$0:Lcom/yanzhenjie/loading/LoadingDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 36
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingDrawable$1;->this$0:Lcom/yanzhenjie/loading/LoadingDrawable;

    invoke-virtual {v0}, Lcom/yanzhenjie/loading/LoadingDrawable;->invalidateSelf()V

    .line 37
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .line 41
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingDrawable$1;->this$0:Lcom/yanzhenjie/loading/LoadingDrawable;

    invoke-virtual {v0, p2, p3, p4}, Lcom/yanzhenjie/loading/LoadingDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 42
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .line 46
    iget-object v0, p0, Lcom/yanzhenjie/loading/LoadingDrawable$1;->this$0:Lcom/yanzhenjie/loading/LoadingDrawable;

    invoke-virtual {v0, p2}, Lcom/yanzhenjie/loading/LoadingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 47
    return-void
.end method
