.class Lcom/isaigu/gymapp/widget/MyButton$1;
.super Ljava/lang/Object;
.source "MyButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/isaigu/gymapp/widget/MyButton;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/isaigu/gymapp/widget/MyButton;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/widget/MyButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/isaigu/gymapp/widget/MyButton;

    .line 31
    iput-object p1, p0, Lcom/isaigu/gymapp/widget/MyButton$1;->this$0:Lcom/isaigu/gymapp/widget/MyButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 35
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 43
    const/4 v0, 0x0

    return v0
.end method
