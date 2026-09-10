.class Lcom/bigkoo/pickerview/view/BasePickerView$4;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 260
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$4;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 263
    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$4;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$4;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-virtual {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->dismiss()V

    .line 265
    const/4 v0, 0x1

    return v0

    .line 267
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
