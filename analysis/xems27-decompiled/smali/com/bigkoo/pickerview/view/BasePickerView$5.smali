.class Lcom/bigkoo/pickerview/view/BasePickerView$5;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bigkoo/pickerview/view/BasePickerView;


# direct methods
.method constructor <init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 299
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$5;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 302
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$5;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->dismiss()V

    .line 305
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
