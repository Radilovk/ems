.class Landroid/support/transition/TransitionManager$MultiListener;
.super Ljava/lang/Object;
.source "TransitionManager.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/transition/TransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MultiListener"
.end annotation


# instance fields
.field mSceneRoot:Landroid/view/ViewGroup;

.field mTransition:Landroid/support/transition/Transition;


# direct methods
.method constructor <init>(Landroid/support/transition/Transition;Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transition"    # Landroid/support/transition/Transition;
    .param p2, "sceneRoot"    # Landroid/view/ViewGroup;

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    iput-object p1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    .line 190
    iput-object p2, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    .line 191
    return-void
.end method

.method private removeListeners()V
    .locals 1

    .line 194
    iget-object v0, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 195
    iget-object v0, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 196
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 6

    .line 218
    invoke-direct {p0}, Landroid/support/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 219
    invoke-static {}, Landroid/support/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 222
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    .line 223
    .local v0, "runningTransitions":Landroid/support/v4/util/ArrayMap;, "Landroid/support/v4/util/ArrayMap<Landroid/view/ViewGroup;Ljava/util/ArrayList<Landroid/support/transition/Transition;>;>;"
    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 224
    .local v1, "currentTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    const/4 v2, 0x0

    .line 225
    .local v2, "previousRunningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-nez v1, :cond_0

    .line 226
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 227
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v1}, Landroid/support/v4/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 229
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v2, v3

    .line 231
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 232
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    new-instance v4, Landroid/support/transition/TransitionManager$MultiListener$1;

    invoke-direct {v4, p0, v0}, Landroid/support/transition/TransitionManager$MultiListener$1;-><init>(Landroid/support/transition/TransitionManager$MultiListener;Landroid/support/v4/util/ArrayMap;)V

    invoke-virtual {v3, v4}, Landroid/support/transition/Transition;->addListener(Landroid/support/transition/Transition$TransitionListener;)Landroid/support/transition/Transition;

    .line 239
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/transition/Transition;->captureValues(Landroid/view/ViewGroup;Z)V

    .line 240
    if-eqz v2, :cond_2

    .line 241
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/transition/Transition;

    .line 242
    .local v4, "runningTransition":Landroid/support/transition/Transition;
    iget-object v5, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v4, v5}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    .line 243
    .end local v4    # "runningTransition":Landroid/support/transition/Transition;
    goto :goto_1

    .line 245
    :cond_2
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    iget-object v4, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/support/transition/Transition;->playTransition(Landroid/view/ViewGroup;)V

    .line 247
    const/4 v3, 0x1

    return v3
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .line 200
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 204
    invoke-direct {p0}, Landroid/support/transition/TransitionManager$MultiListener;->removeListeners()V

    .line 206
    invoke-static {}, Landroid/support/transition/TransitionManager;->access$000()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 207
    invoke-static {}, Landroid/support/transition/TransitionManager;->getRunningTransitions()Landroid/support/v4/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/support/v4/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 208
    .local v0, "runningTransitions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/transition/Transition;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 209
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/transition/Transition;

    .line 210
    .local v2, "runningTransition":Landroid/support/transition/Transition;
    iget-object v3, p0, Landroid/support/transition/TransitionManager$MultiListener;->mSceneRoot:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/support/transition/Transition;->resume(Landroid/view/View;)V

    .line 211
    .end local v2    # "runningTransition":Landroid/support/transition/Transition;
    goto :goto_0

    .line 213
    :cond_0
    iget-object v1, p0, Landroid/support/transition/TransitionManager$MultiListener;->mTransition:Landroid/support/transition/Transition;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/transition/Transition;->clearValues(Z)V

    .line 214
    return-void
.end method
