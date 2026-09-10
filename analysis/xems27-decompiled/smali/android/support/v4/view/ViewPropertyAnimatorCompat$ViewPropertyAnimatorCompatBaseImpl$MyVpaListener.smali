.class Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorCompat.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyVpaListener"
.end annotation


# instance fields
.field mAnimEndCalled:Z

.field mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0
    .param p1, "vpa"    # Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 119
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 172
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 174
    .local v1, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_0

    .line 175
    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 177
    :cond_0
    if-eqz v1, :cond_1

    .line 178
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationCancel(Landroid/view/View;)V

    .line 180
    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 146
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 147
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 148
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v2, -0x1

    iput v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    .line 150
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-ge v0, v2, :cond_1

    iget-boolean v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mAnimEndCalled:Z

    if-nez v0, :cond_5

    .line 153
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 155
    .local v0, "endAction":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mEndAction:Ljava/lang/Runnable;

    .line 156
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 158
    .end local v0    # "endAction":Ljava/lang/Runnable;
    :cond_2
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 160
    .local v1, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_3

    .line 161
    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 163
    :cond_3
    if-eqz v1, :cond_4

    .line 164
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    .line 166
    :cond_4
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mAnimEndCalled:Z

    .line 168
    .end local v0    # "listenerTag":Ljava/lang/Object;
    .end local v1    # "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    :cond_5
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mAnimEndCalled:Z

    .line 126
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mOldLayerType:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 127
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 129
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iget-object v0, v0, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 131
    .local v0, "startAction":Ljava/lang/Runnable;
    iget-object v2, p0, Landroid/support/v4/view/ViewPropertyAnimatorCompat$ViewPropertyAnimatorCompatBaseImpl$MyVpaListener;->mVpa:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object v1, v2, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->mStartAction:Ljava/lang/Runnable;

    .line 132
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 134
    .end local v0    # "startAction":Ljava/lang/Runnable;
    :cond_1
    const/high16 v0, 0x7e000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    .line 135
    .local v0, "listenerTag":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 136
    .local v1, "listener":Landroid/support/v4/view/ViewPropertyAnimatorListener;
    instance-of v2, v0, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    if-eqz v2, :cond_2

    .line 137
    move-object v1, v0

    check-cast v1, Landroid/support/v4/view/ViewPropertyAnimatorListener;

    .line 139
    :cond_2
    if-eqz v1, :cond_3

    .line 140
    invoke-interface {v1, p1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationStart(Landroid/view/View;)V

    .line 142
    :cond_3
    return-void
.end method
