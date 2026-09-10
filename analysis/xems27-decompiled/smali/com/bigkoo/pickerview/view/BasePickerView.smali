.class public Lcom/bigkoo/pickerview/view/BasePickerView;
.super Ljava/lang/Object;
.source "BasePickerView.java"


# instance fields
.field protected animGravity:I

.field protected clickView:Landroid/view/View;

.field protected contentContainer:Landroid/view/ViewGroup;

.field private context:Landroid/content/Context;

.field private dialogView:Landroid/view/ViewGroup;

.field private dismissing:Z

.field private inAnim:Landroid/view/animation/Animation;

.field private isAnim:Z

.field private isShowing:Z

.field private mDialog:Landroid/app/Dialog;

.field protected mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

.field private final onCancelableTouchListener:Landroid/view/View$OnTouchListener;

.field private onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;

.field private onKeyBackListener:Landroid/view/View$OnKeyListener;

.field private outAnim:Landroid/view/animation/Animation;

.field private rootView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/16 v0, 0x50

    iput v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->animGravity:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isAnim:Z

    .line 260
    new-instance v0, Lcom/bigkoo/pickerview/view/BasePickerView$4;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$4;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onKeyBackListener:Landroid/view/View$OnKeyListener;

    .line 299
    new-instance v0, Lcom/bigkoo/pickerview/view/BasePickerView$5;

    invoke-direct {v0, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$5;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onCancelableTouchListener:Landroid/view/View$OnTouchListener;

    .line 50
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/bigkoo/pickerview/view/BasePickerView;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 28
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$102(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/BasePickerView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isShowing:Z

    return p1
.end method

.method static synthetic access$202(Lcom/bigkoo/pickerview/view/BasePickerView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/BasePickerView;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/bigkoo/pickerview/view/BasePickerView;)Lcom/bigkoo/pickerview/listener/OnDismissListener;
    .locals 1
    .param p0, "x0"    # Lcom/bigkoo/pickerview/view/BasePickerView;

    .line 28
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;

    return-object v0
.end method

.method private dismissDialog()V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 344
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 346
    :cond_0
    return-void
.end method

.method private getInAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 228
    iget v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->animGravity:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/utils/PickerViewAnimateUtil;->getAnimationResource(IZ)I

    move-result v0

    .line 229
    .local v0, "res":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private getOutAnimation()Landroid/view/animation/Animation;
    .locals 2

    .line 233
    iget v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->animGravity:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bigkoo/pickerview/utils/PickerViewAnimateUtil;->getAnimationResource(IZ)I

    move-result v0

    .line 234
    .local v0, "res":I
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    return-object v1
.end method

.method private onAttached(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .line 152
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 153
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isAnim:Z

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->inAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :cond_0
    return-void
.end method

.method private showDialog()V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 340
    :cond_0
    return-void
.end method


# virtual methods
.method public createDialog()V
    .locals 3

    .line 314
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dialogView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 315
    new-instance v0, Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    sget v2, Lcom/bigkoo/pickerview/R$style;->custom_dialog2:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    .line 316
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 317
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dialogView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 319
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 320
    .local v0, "dialogWindow":Landroid/view/Window;
    if-eqz v0, :cond_0

    .line 321
    sget v1, Lcom/bigkoo/pickerview/R$style;->picker_view_scale_anim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 322
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    new-instance v2, Lcom/bigkoo/pickerview/view/BasePickerView$6;

    invoke-direct {v2, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$6;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 334
    .end local v0    # "dialogWindow":Landroid/view/Window;
    :cond_1
    return-void
.end method

.method public dismiss()V
    .locals 2

    .line 174
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissDialog()V

    goto :goto_1

    .line 177
    :cond_0
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissing:Z

    if-eqz v0, :cond_1

    .line 178
    return-void

    .line 181
    :cond_1
    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isAnim:Z

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->outAnim:Landroid/view/animation/Animation;

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$2;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$2;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 199
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->outAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissImmediately()V

    .line 203
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dismissing:Z

    .line 207
    :goto_1
    return-void
.end method

.method public dismissImmediately()V
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v0, v0, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    new-instance v1, Lcom/bigkoo/pickerview/view/BasePickerView$3;

    invoke-direct {v1, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$3;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 225
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .param p1, "id"    # I

    .line 310
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getDialogContainerLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method protected initAnim()V
    .locals 1

    .line 100
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->inAnim:Landroid/view/animation/Animation;

    .line 101
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->outAnim:Landroid/view/animation/Animation;

    .line 102
    return-void
.end method

.method protected initEvents()V
    .locals 0

    .line 105
    return-void
.end method

.method protected initViews()V
    .locals 6

    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 60
    .local v2, "layoutInflater":Landroid/view/LayoutInflater;
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isDialog()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 62
    sget v1, Lcom/bigkoo/pickerview/R$layout;->layout_basepickerview:I

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dialogView:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 66
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dialogView:Landroid/view/ViewGroup;

    sget v3, Lcom/bigkoo/pickerview/R$id;->content_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    .line 68
    const/16 v1, 0x1e

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 69
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 70
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->createDialog()V

    .line 74
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dialogView:Landroid/view/ViewGroup;

    new-instance v3, Lcom/bigkoo/pickerview/view/BasePickerView$1;

    invoke-direct {v3, p0}, Lcom/bigkoo/pickerview/view/BasePickerView$1;-><init>(Lcom/bigkoo/pickerview/view/BasePickerView;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 83
    :cond_0
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    if-nez v3, :cond_1

    .line 84
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->context:Landroid/content/Context;

    check-cast v5, Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    iput-object v5, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    .line 87
    :cond_1
    sget v3, Lcom/bigkoo/pickerview/R$layout;->layout_basepickerview:I

    iget-object v5, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-object v5, v5, Lcom/bigkoo/pickerview/configure/PickerOptions;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    .line 88
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 89
    iget-object v3, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->backgroundId:I

    if-eq v3, v1, :cond_2

    .line 90
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget v3, v3, Lcom/bigkoo/pickerview/configure/PickerOptions;->backgroundId:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    sget v3, Lcom/bigkoo/pickerview/R$id;->content_container:I

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->contentContainer:Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/bigkoo/pickerview/view/BasePickerView;->setKeyBackCancelable(Z)V

    .line 97
    return-void
.end method

.method public isDialog()Z
    .locals 1

    .line 360
    const/4 v0, 0x0

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 165
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isDialog()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 166
    return v1

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isShowing:Z

    if-eqz v0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public setDialogOutSideCancelable()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 291
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->mPickerOptions:Lcom/bigkoo/pickerview/configure/PickerOptions;

    iget-boolean v1, v1, Lcom/bigkoo/pickerview/configure/PickerOptions;->cancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 293
    :cond_0
    return-void
.end method

.method public setKeyBackCancelable(Z)V
    .locals 2
    .param p1, "isCancelable"    # Z

    .line 245
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->dialogView:Landroid/view/ViewGroup;

    .local v0, "View":Landroid/view/ViewGroup;
    goto :goto_0

    .line 248
    .end local v0    # "View":Landroid/view/ViewGroup;
    :cond_0
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    .line 251
    .restart local v0    # "View":Landroid/view/ViewGroup;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 252
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 253
    if-eqz p1, :cond_1

    .line 254
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onKeyBackListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_1

    .line 256
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 258
    :goto_1
    return-void
.end method

.method public setOnDismissListener(Lcom/bigkoo/pickerview/listener/OnDismissListener;)Lcom/bigkoo/pickerview/view/BasePickerView;
    .locals 0
    .param p1, "onDismissListener"    # Lcom/bigkoo/pickerview/listener/OnDismissListener;

    .line 238
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onDismissListener:Lcom/bigkoo/pickerview/listener/OnDismissListener;

    .line 239
    return-object p0
.end method

.method protected setOutSideCancelable(Z)Lcom/bigkoo/pickerview/view/BasePickerView;
    .locals 2
    .param p1, "isCancelable"    # Z

    .line 273
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 274
    sget v1, Lcom/bigkoo/pickerview/R$id;->outmost_container:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    .local v0, "view":Landroid/view/View;
    if-eqz p1, :cond_0

    .line 277
    iget-object v1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->onCancelableTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 279
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    .end local v0    # "view":Landroid/view/View;
    :cond_1
    :goto_0
    return-object p0
.end method

.method public show()V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->showDialog()V

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    return-void

    .line 139
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isShowing:Z

    .line 140
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/bigkoo/pickerview/view/BasePickerView;->onAttached(Landroid/view/View;)V

    .line 141
    iget-object v0, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->rootView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    .line 143
    :goto_0
    return-void
.end method

.method public show(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 124
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->clickView:Landroid/view/View;

    .line 125
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->show()V

    .line 126
    return-void
.end method

.method public show(Landroid/view/View;Z)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "isAnim"    # Z

    .line 113
    iput-object p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->clickView:Landroid/view/View;

    .line 114
    iput-boolean p2, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isAnim:Z

    .line 115
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->show()V

    .line 116
    return-void
.end method

.method public show(Z)V
    .locals 0
    .param p1, "isAnim"    # Z

    .line 119
    iput-boolean p1, p0, Lcom/bigkoo/pickerview/view/BasePickerView;->isAnim:Z

    .line 120
    invoke-virtual {p0}, Lcom/bigkoo/pickerview/view/BasePickerView;->show()V

    .line 121
    return-void
.end method
