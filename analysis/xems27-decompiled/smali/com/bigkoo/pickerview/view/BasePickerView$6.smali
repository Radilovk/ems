.class Lcom/bigkoo/pickerview/view/BasePickerView$6;
.super Ljava/lang/Object;
.source "BasePickerView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bigkoo/pickerview/view/BasePickerView;->createDialog()V
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

    .line 325
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 328
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$300(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-static {v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->access$300(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;

    move-result-object v0

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView$6;->this$0:Lcom/bigkoo/pickerview/view/BasePickerView;

    invoke-interface {v0, v1}, Lcom/bigkoo/pickerview/listener/OnDismissListener;->onDismiss(Ljava/lang/Object;)V

    .line 331
    :cond_0
    return-void
.end method
