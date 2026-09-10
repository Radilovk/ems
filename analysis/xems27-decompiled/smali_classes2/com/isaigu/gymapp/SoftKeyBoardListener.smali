.class public Lcom/isaigu/gymapp/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source "SoftKeyBoardListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;
    }
.end annotation


# instance fields
.field private baseActivity:Lcom/isaigu/gymapp/BaseActivity;

.field private dialogFragment:Lcom/isaigu/gymapp/BaseDialogFragment;

.field private onSoftKeyBoardChangeListener:Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

.field private rootView:Landroid/view/View;

.field private screenHeight:I


# direct methods
.method public constructor <init>(Lcom/isaigu/gymapp/BaseActivity;)V
    .locals 1
    .param p1, "activity"    # Lcom/isaigu/gymapp/BaseActivity;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/isaigu/gymapp/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 24
    iput-object p1, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->baseActivity:Lcom/isaigu/gymapp/BaseActivity;

    .line 25
    invoke-direct {p0, p1}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->init(Landroid/app/Activity;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Lcom/isaigu/gymapp/BaseDialogFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcom/isaigu/gymapp/BaseDialogFragment;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-virtual {p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 18
    iput-object p1, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->dialogFragment:Lcom/isaigu/gymapp/BaseDialogFragment;

    .line 19
    invoke-virtual {p1}, Lcom/isaigu/gymapp/BaseDialogFragment;->getParentActivity()Lcom/isaigu/gymapp/BaseActivity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->init(Landroid/app/Activity;)V

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/isaigu/gymapp/SoftKeyBoardListener;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/SoftKeyBoardListener;

    .line 10
    iget-object v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->rootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/isaigu/gymapp/SoftKeyBoardListener;)I
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/SoftKeyBoardListener;

    .line 10
    iget v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->screenHeight:I

    return v0
.end method

.method static synthetic access$200(Lcom/isaigu/gymapp/SoftKeyBoardListener;)Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/isaigu/gymapp/SoftKeyBoardListener;

    .line 10
    iget-object v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

    return-object v0
.end method

.method private adjustLayout(Z)V
    .locals 2
    .param p1, "isVisible"    # Z

    .line 103
    iget-object v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    .line 104
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    if-eqz p1, :cond_0

    .line 105
    const/16 v1, -0x6c

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 106
    iget-object v1, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 108
    :cond_0
    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 109
    iget-object v1, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->rootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    :goto_0
    return-void
.end method

.method private init(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;

    .line 29
    invoke-static {p1}, Lcom/isaigu/gymapp/utils/AndroidUtils;->getScreenHeight(Landroid/app/Activity;)I

    move-result v0

    iput v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->screenHeight:I

    .line 30
    invoke-direct {p0}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->initListener()V

    .line 31
    return-void
.end method

.method private initListener()V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->rootView:Landroid/view/View;

    new-instance v1, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;

    invoke-direct {v1, p0}, Lcom/isaigu/gymapp/SoftKeyBoardListener$1;-><init>(Lcom/isaigu/gymapp/SoftKeyBoardListener;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 100
    return-void
.end method

.method public static setListener(Lcom/isaigu/gymapp/BaseActivity;Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;)V
    .locals 1
    .param p0, "activity"    # Lcom/isaigu/gymapp/BaseActivity;
    .param p1, "onSoftKeyBoardChangeListener"    # Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

    .line 123
    new-instance v0, Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/SoftKeyBoardListener;-><init>(Lcom/isaigu/gymapp/BaseActivity;)V

    .line 124
    .local v0, "softKeyBoardListener":Lcom/isaigu/gymapp/SoftKeyBoardListener;
    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;)V

    .line 125
    return-void
.end method

.method public static setListener(Lcom/isaigu/gymapp/BaseDialogFragment;Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;)V
    .locals 1
    .param p0, "dialog"    # Lcom/isaigu/gymapp/BaseDialogFragment;
    .param p1, "onSoftKeyBoardChangeListener"    # Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

    .line 128
    new-instance v0, Lcom/isaigu/gymapp/SoftKeyBoardListener;

    invoke-direct {v0, p0}, Lcom/isaigu/gymapp/SoftKeyBoardListener;-><init>(Lcom/isaigu/gymapp/BaseDialogFragment;)V

    .line 129
    .local v0, "softKeyBoardListener":Lcom/isaigu/gymapp/SoftKeyBoardListener;
    invoke-direct {v0, p1}, Lcom/isaigu/gymapp/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;)V

    .line 130
    return-void
.end method

.method private setOnSoftKeyBoardChangeListener(Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;)V
    .locals 0
    .param p1, "onSoftKeyBoardChangeListener"    # Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

    .line 114
    iput-object p1, p0, Lcom/isaigu/gymapp/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/isaigu/gymapp/SoftKeyBoardListener$OnKeyboardChangeListener;

    .line 115
    return-void
.end method
