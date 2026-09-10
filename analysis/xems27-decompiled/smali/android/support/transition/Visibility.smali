.class public abstract Landroid/support/transition/Visibility;
.super Landroid/support/transition/Transition;
.source "Visibility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/transition/Visibility$VisibilityInfo;
    }
.end annotation


# static fields
.field private static final PROPNAME_PARENT:Ljava/lang/String; = "android:visibility:parent"

.field private static final PROPNAME_VISIBILITY:Ljava/lang/String; = "android:visibility:visibility"

.field private static final sTransitionProperties:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "android:visibility:visibility"

    const-string v1, "android:visibility:parent"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Landroid/support/transition/Transition;-><init>()V

    .line 56
    return-void
.end method

.method private captureValues(Landroid/support/transition/TransitionValues;)V
    .locals 4
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 65
    iget-object v0, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 66
    .local v0, "visibility":I
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "android:visibility:visibility"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    iget-object v2, p1, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const-string v3, "android:visibility:parent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    return-void
.end method

.method private getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;
    .locals 7
    .param p1, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 107
    new-instance v0, Landroid/support/transition/Visibility$VisibilityInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/transition/Visibility$VisibilityInfo;-><init>(Landroid/support/transition/Visibility$1;)V

    .line 108
    .local v0, "visInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 109
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 110
    const-string v3, "android:visibility:parent"

    const-string v4, "android:visibility:visibility"

    const/4 v5, -0x1

    if-eqz p1, :cond_0

    .line 111
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iput v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 112
    iget-object v6, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iput-object v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 114
    :cond_0
    iput v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    .line 115
    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    .line 117
    :goto_0
    if-eqz p2, :cond_1

    .line 118
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 119
    iget-object v1, p2, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    goto :goto_1

    .line 121
    :cond_1
    iput v5, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    .line 122
    iput-object v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    .line 124
    :goto_1
    const/4 v1, 0x1

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    .line 125
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-ne v3, v4, :cond_2

    iget-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    iget-object v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-ne v3, v4, :cond_2

    .line 127
    return-object v0

    .line 129
    :cond_2
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v4, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-eq v3, v4, :cond_4

    .line 130
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-nez v3, :cond_3

    .line 131
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 132
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 133
    :cond_3
    iget v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v3, :cond_6

    .line 134
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 135
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 139
    :cond_4
    iget-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_5

    .line 140
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 141
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_2

    .line 142
    :cond_5
    iget-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_6

    .line 143
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 144
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 149
    :cond_6
    :goto_2
    if-nez p1, :cond_7

    .line 150
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 151
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    goto :goto_3

    .line 152
    :cond_7
    if-nez p2, :cond_8

    .line 153
    iput-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    .line 154
    iput-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    .line 156
    :cond_8
    :goto_3
    return-object v0
.end method


# virtual methods
.method areValuesChanged(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Z
    .locals 3
    .param p1, "oldValues"    # Landroid/support/transition/TransitionValues;
    .param p2, "newValues"    # Landroid/support/transition/TransitionValues;

    .line 231
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 232
    return v0

    .line 234
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v1

    .line 235
    .local v1, "changeInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v2, v1, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    if-eqz v2, :cond_2

    iget v2, v1, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    if-eqz v2, :cond_1

    iget v2, v1, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    if-nez v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public captureEndValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 77
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 78
    return-void
.end method

.method public captureStartValues(Landroid/support/transition/TransitionValues;)V
    .locals 0
    .param p1, "transitionValues"    # Landroid/support/transition/TransitionValues;

    .line 72
    invoke-direct {p0, p1}, Landroid/support/transition/Visibility;->captureValues(Landroid/support/transition/TransitionValues;)V

    .line 73
    return-void
.end method

.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 9
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "endValues"    # Landroid/support/transition/TransitionValues;

    .line 163
    invoke-direct {p0, p2, p3}, Landroid/support/transition/Visibility;->getVisibilityChangeInfo(Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/support/transition/Visibility$VisibilityInfo;

    move-result-object v0

    .line 164
    .local v0, "visInfo":Landroid/support/transition/Visibility$VisibilityInfo;
    iget-boolean v1, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mVisibilityChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    .line 167
    const/4 v1, 0x0

    .line 168
    .local v1, "isTarget":Z
    iget-object v3, p0, Landroid/support/transition/Visibility;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Landroid/support/transition/Visibility;->mTargetIds:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 169
    :cond_0
    if-eqz p2, :cond_1

    iget-object v3, p2, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_0

    :cond_1
    move-object v3, v2

    .line 170
    .local v3, "startView":Landroid/view/View;
    :goto_0
    if-eqz p3, :cond_2

    iget-object v4, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    goto :goto_1

    :cond_2
    move-object v4, v2

    .line 171
    .local v4, "endView":Landroid/view/View;
    :goto_1
    invoke-virtual {p0, v3}, Landroid/support/transition/Visibility;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0, v4}, Landroid/support/transition/Visibility;->isValidTarget(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v5, 0x1

    :goto_3
    move v1, v5

    .line 173
    .end local v3    # "startView":Landroid/view/View;
    .end local v4    # "endView":Landroid/view/View;
    :cond_5
    if-nez v1, :cond_6

    iget-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartParent:Landroid/view/ViewGroup;

    if-nez v3, :cond_6

    iget-object v3, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndParent:Landroid/view/ViewGroup;

    if-eqz v3, :cond_8

    .line 174
    :cond_6
    iget-boolean v2, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mFadeIn:Z

    if-eqz v2, :cond_7

    .line 175
    iget v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v8, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/support/transition/Visibility;->onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v2

    return-object v2

    .line 178
    :cond_7
    iget v6, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mStartVisibility:I

    iget v8, v0, Landroid/support/transition/Visibility$VisibilityInfo;->mEndVisibility:I

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/support/transition/Visibility;->onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;

    move-result-object v2

    return-object v2

    .line 184
    .end local v1    # "isTarget":Z
    :cond_8
    return-object v2
.end method

.method public getTransitionProperties()[Ljava/lang/String;
    .locals 1

    .line 61
    sget-object v0, Landroid/support/transition/Visibility;->sTransitionProperties:[Ljava/lang/String;

    return-object v0
.end method

.method public isVisible(Landroid/support/transition/TransitionValues;)Z
    .locals 4
    .param p1, "values"    # Landroid/support/transition/TransitionValues;

    .line 96
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 97
    return v0

    .line 99
    :cond_0
    iget-object v1, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v2, "android:visibility:visibility"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 100
    .local v1, "visibility":I
    iget-object v2, p1, Landroid/support/transition/TransitionValues;->values:Ljava/util/Map;

    const-string v3, "android:visibility:parent"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 102
    .local v2, "parent":Landroid/view/View;
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onAppear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 205
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDisappear(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;ILandroid/support/transition/TransitionValues;I)Landroid/animation/Animator;
    .locals 1
    .param p1, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p2, "startValues"    # Landroid/support/transition/TransitionValues;
    .param p3, "startVisibility"    # I
    .param p4, "endValues"    # Landroid/support/transition/TransitionValues;
    .param p5, "endVisibility"    # I

    .line 226
    const/4 v0, 0x0

    return-object v0
.end method
