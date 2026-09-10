.class public Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_DURATION_MS:I = 0x12c


# instance fields
.field private animation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final duration:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3
    .param p1, "duration"    # I

    .line 33
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$DefaultAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory$1;)V

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimation$AnimationFactory;)V

    invoke-direct {p0, v0, p1}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "defaultAnimationId"    # I
    .param p3, "duration"    # I

    .line 37
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0, p3}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 1
    .param p1, "defaultAnimation"    # Landroid/view/animation/Animation;
    .param p2, "duration"    # I

    .line 41
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    new-instance v0, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-direct {p0, v0, p2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;-><init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V

    .line 42
    return-void
.end method

.method constructor <init>(Lcom/bumptech/glide/request/animation/ViewAnimationFactory;I)V
    .locals 0
    .param p2, "duration"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<",
            "TT;>;I)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    .local p1, "animationFactory":Lcom/bumptech/glide/request/animation/ViewAnimationFactory;, "Lcom/bumptech/glide/request/animation/ViewAnimationFactory<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    .line 46
    iput p2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    .line 47
    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;
    .locals 3
    .param p1, "isFromMemoryCache"    # Z
    .param p2, "isFirstResource"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;, "Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory<TT;>;"
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/bumptech/glide/request/animation/NoAnimation;->get()Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animationFactory:Lcom/bumptech/glide/request/animation/ViewAnimationFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/bumptech/glide/request/animation/ViewAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 57
    .local v0, "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    new-instance v1, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    iget v2, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->duration:I

    invoke-direct {v1, v0, v2}, Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;-><init>(Lcom/bumptech/glide/request/animation/GlideAnimation;I)V

    iput-object v1, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    .line 60
    .end local v0    # "defaultAnimation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TT;>;"
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/animation/DrawableCrossFadeFactory;->animation:Lcom/bumptech/glide/request/animation/DrawableCrossFadeViewAnimation;

    return-object v0
.end method
