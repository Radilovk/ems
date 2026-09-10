.class public final Lcom/bumptech/glide/request/GenericRequest;
.super Ljava/lang/Object;
.source "GenericRequest.java"

# interfaces
.implements Lcom/bumptech/glide/request/Request;
.implements Lcom/bumptech/glide/request/target/SizeReadyCallback;
.implements Lcom/bumptech/glide/request/ResourceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bumptech/glide/request/GenericRequest$Status;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/Request;",
        "Lcom/bumptech/glide/request/target/SizeReadyCallback;",
        "Lcom/bumptech/glide/request/ResourceCallback;"
    }
.end annotation


# static fields
.field private static final REQUEST_POOL:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/bumptech/glide/request/GenericRequest<",
            "****>;>;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "GenericRequest"

.field private static final TO_MEGABYTE:D = 9.5367431640625E-7


# instance fields
.field private animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TR;>;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field private engine:Lcom/bumptech/glide/load/engine/Engine;

.field private errorDrawable:Landroid/graphics/drawable/Drawable;

.field private errorResourceId:I

.field private isMemoryCacheable:Z

.field private loadProvider:Lcom/bumptech/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

.field private loadedFromMemoryCache:Z

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderResourceId:I

.field private priority:Lcom/bumptech/glide/Priority;

.field private requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

.field private requestListener:Lcom/bumptech/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/RequestListener<",
            "-TA;TR;>;"
        }
    .end annotation
.end field

.field private resource:Lcom/bumptech/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;"
        }
    .end annotation
.end field

.field private signature:Lcom/bumptech/glide/load/Key;

.field private sizeMultiplier:F

.field private startTime:J

.field private status:Lcom/bumptech/glide/request/GenericRequest$Status;

.field private final tag:Ljava/lang/String;

.field private target:Lcom/bumptech/glide/request/target/Target;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;"
        }
    .end annotation
.end field

.field private transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TR;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/bumptech/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Transformation<",
            "TZ;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bumptech/glide/util/Util;->createQueue(I)Ljava/util/Queue;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 141
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    .line 143
    return-void
.end method

.method private canNotifyStatusChanged()Z
    .locals 1

    .line 441
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canNotifyStatusChanged(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private canSetResource()Z
    .locals 1

    .line 437
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->canSetImage(Lcom/bumptech/glide/request/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private static check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "suggestion"    # Ljava/lang/String;

    .line 235
    if-nez p1, :cond_1

    .line 236
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 237
    .local v0, "message":Ljava/lang/StringBuilder;
    const-string v1, " must not be null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    if-eqz p2, :cond_0

    .line 239
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    .end local v0    # "message":Ljava/lang/StringBuilder;
    :cond_1
    return-void
.end method

.method private getErrorDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 387
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    if-lez v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 394
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    if-lez v0, :cond_0

    .line 395
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V
    .locals 16
    .param p3, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "priority"    # Lcom/bumptech/glide/Priority;
    .param p7, "sizeMultiplier"    # F
    .param p8, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p9, "placeholderResourceId"    # I
    .param p10, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p11, "errorResourceId"    # I
    .param p13, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p14, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p17, "isMemoryCacheable"    # Z
    .param p19, "overrideWidth"    # I
    .param p20, "overrideHeight"    # I
    .param p21, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener<",
            "-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p2, "model":Ljava/lang/Object;, "TA;"
    .local p6, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p12, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p15, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local p16, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p18, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p15

    move-object/from16 v3, p1

    iput-object v3, v0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 185
    iput-object v1, v0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 186
    move-object/from16 v4, p3

    iput-object v4, v0, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    .line 187
    invoke-virtual/range {p4 .. p4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, v0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 188
    move-object/from16 v5, p5

    iput-object v5, v0, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    .line 189
    move-object/from16 v6, p6

    iput-object v6, v0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 190
    move/from16 v7, p7

    iput v7, v0, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    .line 191
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 192
    move/from16 v9, p9

    iput v9, v0, Lcom/bumptech/glide/request/GenericRequest;->placeholderResourceId:I

    .line 193
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 194
    move/from16 v11, p11

    iput v11, v0, Lcom/bumptech/glide/request/GenericRequest;->errorResourceId:I

    .line 195
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 196
    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 197
    move-object/from16 v14, p14

    iput-object v14, v0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    .line 198
    iput-object v2, v0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 199
    move-object/from16 v15, p16

    iput-object v15, v0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    .line 200
    move/from16 v3, p17

    iput-boolean v3, v0, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    .line 201
    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 202
    move/from16 v3, p19

    iput v3, v0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    .line 203
    move/from16 v3, p20

    iput v3, v0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    .line 204
    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 205
    sget-object v3, Lcom/bumptech/glide/request/GenericRequest$Status;->PENDING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v3, v0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 209
    if-eqz v1, :cond_3

    .line 210
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v3

    const-string v0, "ModelLoader"

    const-string v1, "try .using(ModelLoader)"

    invoke-static {v0, v3, v1}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    const-string v1, "Transcoder"

    const-string v3, "try .as*(Class).transcode(ResourceTranscoder)"

    invoke-static {v1, v0, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    const-string v0, "Transformation"

    const-string v1, "try .transform(UnitTransformation.get())"

    invoke-static {v0, v2, v1}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceEncoder()Lcom/bumptech/glide/load/Encoder;

    move-result-object v0

    const-string v1, "SourceEncoder"

    const-string v3, "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)"

    invoke-static {v1, v0, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/provider/LoadProvider;->getSourceDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    const-string v1, "SourceDecoder"

    const-string v3, "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)"

    invoke-static {v1, v0, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 220
    :goto_0
    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 224
    :cond_1
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/provider/LoadProvider;->getCacheDecoder()Lcom/bumptech/glide/load/ResourceDecoder;

    move-result-object v0

    const-string v1, "CacheDecoder"

    const-string v3, "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)"

    invoke-static {v1, v0, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    :cond_2
    invoke-virtual/range {p21 .. p21}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-interface/range {p1 .. p1}, Lcom/bumptech/glide/provider/LoadProvider;->getEncoder()Lcom/bumptech/glide/load/ResourceEncoder;

    move-result-object v0

    const-string v1, "Encoder"

    const-string v3, "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)"

    invoke-static {v1, v0, v3}, Lcom/bumptech/glide/request/GenericRequest;->check(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 232
    :cond_3
    return-void
.end method

.method private isFirstReadyResource()Z
    .locals 1

    .line 445
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bumptech/glide/request/RequestCoordinator;->isAnyResourceSet()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private logV(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .line 529
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GenericRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    return-void
.end method

.method private notifyLoadSuccess()V
    .locals 1

    .line 449
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    if-eqz v0, :cond_0

    .line 450
    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/RequestCoordinator;->onRequestSuccess(Lcom/bumptech/glide/request/Request;)V

    .line 452
    :cond_0
    return-void
.end method

.method public static obtain(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/GenericRequest;
    .locals 23
    .param p2, "signature"    # Lcom/bumptech/glide/load/Key;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "priority"    # Lcom/bumptech/glide/Priority;
    .param p6, "sizeMultiplier"    # F
    .param p7, "placeholderDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p8, "placeholderResourceId"    # I
    .param p9, "errorDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p10, "errorResourceId"    # I
    .param p12, "requestCoordinator"    # Lcom/bumptech/glide/request/RequestCoordinator;
    .param p13, "engine"    # Lcom/bumptech/glide/load/engine/Engine;
    .param p16, "isMemoryCacheable"    # Z
    .param p18, "overrideWidth"    # I
    .param p19, "overrideHeight"    # I
    .param p20, "diskCacheStrategy"    # Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;TA;",
            "Lcom/bumptech/glide/load/Key;",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/Priority;",
            "Lcom/bumptech/glide/request/target/Target<",
            "TR;>;F",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Landroid/graphics/drawable/Drawable;",
            "I",
            "Lcom/bumptech/glide/request/RequestListener<",
            "-TA;TR;>;",
            "Lcom/bumptech/glide/request/RequestCoordinator;",
            "Lcom/bumptech/glide/load/engine/Engine;",
            "Lcom/bumptech/glide/load/Transformation<",
            "TZ;>;",
            "Ljava/lang/Class<",
            "TR;>;Z",
            "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<",
            "TR;>;II",
            "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/bumptech/glide/request/GenericRequest<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 113
    .local p0, "loadProvider":Lcom/bumptech/glide/provider/LoadProvider;, "Lcom/bumptech/glide/provider/LoadProvider<TA;TT;TZ;TR;>;"
    .local p1, "model":Ljava/lang/Object;, "TA;"
    .local p5, "target":Lcom/bumptech/glide/request/target/Target;, "Lcom/bumptech/glide/request/target/Target<TR;>;"
    .local p11, "requestListener":Lcom/bumptech/glide/request/RequestListener;, "Lcom/bumptech/glide/request/RequestListener<-TA;TR;>;"
    .local p14, "transformation":Lcom/bumptech/glide/load/Transformation;, "Lcom/bumptech/glide/load/Transformation<TZ;>;"
    .local p15, "transcodeClass":Ljava/lang/Class;, "Ljava/lang/Class<TR;>;"
    .local p17, "animationFactory":Lcom/bumptech/glide/request/animation/GlideAnimationFactory;, "Lcom/bumptech/glide/request/animation/GlideAnimationFactory<TR;>;"
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/request/GenericRequest;

    .line 114
    .local v0, "request":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    if-nez v0, :cond_0

    .line 115
    new-instance v1, Lcom/bumptech/glide/request/GenericRequest;

    invoke-direct {v1}, Lcom/bumptech/glide/request/GenericRequest;-><init>()V

    move-object v0, v1

    .line 117
    :cond_0
    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p9

    move/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, p12

    move-object/from16 v15, p13

    move-object/from16 v16, p14

    move-object/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move/from16 v20, p18

    move/from16 v21, p19

    move-object/from16 v22, p20

    invoke-direct/range {v1 .. v22}, Lcom/bumptech/glide/request/GenericRequest;->init(Lcom/bumptech/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/bumptech/glide/load/Key;Landroid/content/Context;Lcom/bumptech/glide/Priority;Lcom/bumptech/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/bumptech/glide/request/RequestListener;Lcom/bumptech/glide/request/RequestCoordinator;Lcom/bumptech/glide/load/engine/Engine;Lcom/bumptech/glide/load/Transformation;Ljava/lang/Class;ZLcom/bumptech/glide/request/animation/GlideAnimationFactory;IILcom/bumptech/glide/load/engine/DiskCacheStrategy;)V

    .line 138
    return-object v0
.end method

.method private onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;TR;)V"
        }
    .end annotation

    .line 496
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    .local p2, "result":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    iget-boolean v4, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v5

    move-object v1, p2

    invoke-interface/range {v0 .. v5}, Lcom/bumptech/glide/request/RequestListener;->onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;ZZ)Z

    move-result v0

    if-nez v0, :cond_1

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/bumptech/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/bumptech/glide/request/animation/GlideAnimation;

    move-result-object v0

    .line 499
    .local v0, "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p2, v0}, Lcom/bumptech/glide/request/target/Target;->onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    .line 502
    .end local v0    # "animation":Lcom/bumptech/glide/request/animation/GlideAnimation;, "Lcom/bumptech/glide/request/animation/GlideAnimation<TR;>;"
    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 503
    iput-object p1, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 504
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->notifyLoadSuccess()V

    .line 506
    const/4 v0, 0x2

    const-string v1, "GenericRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Resource ready in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->getSize()I

    move-result v1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3eb0000000000000L    # 9.5367431640625E-7

    mul-double v1, v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " fromCache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 510
    :cond_2
    return-void
.end method

.method private releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 1
    .param p1, "resource"    # Lcom/bumptech/glide/load/engine/Resource;

    .line 330
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/load/engine/Engine;->release(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 331
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    .line 332
    return-void
.end method

.method private setErrorPlaceholder(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .line 375
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-nez v0, :cond_0

    .line 376
    return-void

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getErrorDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 380
    .local v0, "error":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_1

    .line 381
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 383
    :cond_1
    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v1, p1, v0}, Lcom/bumptech/glide/request/target/Target;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 384
    return-void
.end method


# virtual methods
.method public begin()V
    .locals 3

    .line 251
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/LogTime;->getLogTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    .line 252
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 253
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 254
    return-void

    .line 257
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 258
    iget v0, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideWidth:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/bumptech/glide/request/GenericRequest;->overrideHeight:I

    if-lez v1, :cond_1

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onSizeReady(II)V

    goto :goto_0

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-interface {v0, p0}, Lcom/bumptech/glide/request/target/Target;->getSize(Lcom/bumptech/glide/request/target/SizeReadyCallback;)V

    .line 264
    :goto_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFailed()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadStarted(Landroid/graphics/drawable/Drawable;)V

    .line 267
    :cond_2
    const/4 v0, 0x2

    const-string v1, "GenericRequest"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished run method in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 270
    :cond_3
    return-void
.end method

.method cancel()V
    .locals 1

    .line 283
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 284
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    if-eqz v0, :cond_0

    .line 285
    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/Engine$LoadStatus;->cancel()V

    .line 286
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 288
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .line 302
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-static {}, Lcom/bumptech/glide/util/Util;->assertMainThread()V

    .line 303
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    .line 304
    return-void

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->cancel()V

    .line 308
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_1

    .line 309
    invoke-direct {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canNotifyStatusChanged()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 312
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->getPlaceholderDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bumptech/glide/request/target/Target;->onLoadCleared(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_2
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 316
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    .line 363
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CANCELLED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->CLEARED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isComplete()Z
    .locals 2

    .line 347
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFailed()Z
    .locals 2

    .line 371
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isPaused()Z
    .locals 2

    .line 320
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isResourceSet()Z
    .locals 1

    .line 355
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->isComplete()Z

    move-result v0

    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 339
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onException(Ljava/lang/Exception;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Exception;

    .line 517
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const-string v0, "GenericRequest"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 518
    const-string v1, "load failed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 521
    :cond_0
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->FAILED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 523
    iget-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->isFirstReadyResource()Z

    move-result v3

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/bumptech/glide/request/RequestListener;->onException(Ljava/lang/Exception;Ljava/lang/Object;Lcom/bumptech/glide/request/target/Target;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 524
    :cond_1
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->setErrorPlaceholder(Ljava/lang/Exception;)V

    .line 526
    :cond_2
    return-void
.end method

.method public onResourceReady(Lcom/bumptech/glide/load/engine/Resource;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 460
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    .local p1, "resource":Lcom/bumptech/glide/load/engine/Resource;, "Lcom/bumptech/glide/load/engine/Resource<*>;"
    if-nez p1, :cond_0

    .line 461
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Expected to receive a Resource<R> with an object of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " inside, but instead got null."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 463
    return-void

    .line 466
    :cond_0
    invoke-interface {p1}, Lcom/bumptech/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object v0

    .line 467
    .local v0, "received":Ljava/lang/Object;
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/bumptech/glide/request/GenericRequest;->canSetResource()Z

    move-result v1

    if-nez v1, :cond_2

    .line 480
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 482
    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->COMPLETE:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v1, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 483
    return-void

    .line 486
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/bumptech/glide/request/GenericRequest;->onResourceReady(Lcom/bumptech/glide/load/engine/Resource;Ljava/lang/Object;)V

    .line 487
    return-void

    .line 468
    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/bumptech/glide/request/GenericRequest;->releaseResource(Lcom/bumptech/glide/load/engine/Resource;)V

    .line 469
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected to receive an object of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/bumptech/glide/request/GenericRequest;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " but instead got "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    goto :goto_1

    :cond_4
    move-object v4, v3

    :goto_1
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inside Resource{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "}."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    const-string v3, " To indicate failure return a null Resource object, rather than a Resource object containing null data."

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 476
    return-void
.end method

.method public onSizeReady(II)V
    .locals 21
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 405
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    move-object/from16 v12, p0

    const-string v13, "GenericRequest"

    const/4 v14, 0x2

    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 408
    :cond_0
    iget-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    sget-object v1, Lcom/bumptech/glide/request/GenericRequest$Status;->WAITING_FOR_SIZE:Lcom/bumptech/glide/request/GenericRequest$Status;

    if-eq v0, v1, :cond_1

    .line 409
    return-void

    .line 411
    :cond_1
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->RUNNING:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 413
    iget v0, v12, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move/from16 v1, p1

    int-to-float v2, v1

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 414
    .end local p1    # "width":I
    .local v15, "width":I
    iget v0, v12, Lcom/bumptech/glide/request/GenericRequest;->sizeMultiplier:F

    move/from16 v1, p2

    int-to-float v2, v1

    mul-float v0, v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 416
    .end local p2    # "height":I
    .local v11, "height":I
    iget-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getModelLoader()Lcom/bumptech/glide/load/model/ModelLoader;

    move-result-object v10

    .line 417
    .local v10, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    iget-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    invoke-interface {v10, v0, v15, v11}, Lcom/bumptech/glide/load/model/ModelLoader;->getResourceFetcher(Ljava/lang/Object;II)Lcom/bumptech/glide/load/data/DataFetcher;

    move-result-object v16

    .line 419
    .local v16, "dataFetcher":Lcom/bumptech/glide/load/data/DataFetcher;, "Lcom/bumptech/glide/load/data/DataFetcher<TT;>;"
    if-nez v16, :cond_2

    .line 420
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Got null fetcher from model loader"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v0}, Lcom/bumptech/glide/request/GenericRequest;->onException(Ljava/lang/Exception;)V

    .line 421
    return-void

    .line 423
    :cond_2
    iget-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/bumptech/glide/provider/LoadProvider;->getTranscoder()Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v17

    .line 424
    .local v17, "transcoder":Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;, "Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder<TZ;TR;>;"
    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished setup for calling load in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 427
    :cond_3
    const/4 v9, 0x1

    iput-boolean v9, v12, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 428
    iget-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->engine:Lcom/bumptech/glide/load/engine/Engine;

    iget-object v1, v12, Lcom/bumptech/glide/request/GenericRequest;->signature:Lcom/bumptech/glide/load/Key;

    iget-object v5, v12, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    iget-object v6, v12, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    iget-object v8, v12, Lcom/bumptech/glide/request/GenericRequest;->priority:Lcom/bumptech/glide/Priority;

    iget-boolean v7, v12, Lcom/bumptech/glide/request/GenericRequest;->isMemoryCacheable:Z

    iget-object v4, v12, Lcom/bumptech/glide/request/GenericRequest;->diskCacheStrategy:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    move v2, v15

    move v3, v11

    move-object/from16 v18, v4

    move-object/from16 v4, v16

    move/from16 v19, v7

    move-object/from16 v7, v17

    const/16 v20, 0x1

    move/from16 v9, v19

    move-object/from16 v19, v10

    .end local v10    # "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    .local v19, "modelLoader":Lcom/bumptech/glide/load/model/ModelLoader;, "Lcom/bumptech/glide/load/model/ModelLoader<TA;TT;>;"
    move-object/from16 v10, v18

    move/from16 v18, v11

    .end local v11    # "height":I
    .local v18, "height":I
    move-object/from16 v11, p0

    invoke-virtual/range {v0 .. v11}, Lcom/bumptech/glide/load/engine/Engine;->load(Lcom/bumptech/glide/load/Key;IILcom/bumptech/glide/load/data/DataFetcher;Lcom/bumptech/glide/provider/DataLoadProvider;Lcom/bumptech/glide/load/Transformation;Lcom/bumptech/glide/load/resource/transcode/ResourceTranscoder;Lcom/bumptech/glide/Priority;ZLcom/bumptech/glide/load/engine/DiskCacheStrategy;Lcom/bumptech/glide/request/ResourceCallback;)Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    move-result-object v0

    iput-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 430
    iget-object v0, v12, Lcom/bumptech/glide/request/GenericRequest;->resource:Lcom/bumptech/glide/load/engine/Resource;

    if-eqz v0, :cond_4

    const/4 v9, 0x1

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    :goto_0
    iput-boolean v9, v12, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 431
    invoke-static {v13, v14}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 432
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finished onSizeReady in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, v12, Lcom/bumptech/glide/request/GenericRequest;->startTime:J

    invoke-static {v1, v2}, Lcom/bumptech/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v12, v0}, Lcom/bumptech/glide/request/GenericRequest;->logV(Ljava/lang/String;)V

    .line 434
    :cond_5
    return-void
.end method

.method public pause()V
    .locals 1

    .line 325
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    invoke-virtual {p0}, Lcom/bumptech/glide/request/GenericRequest;->clear()V

    .line 326
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest$Status;->PAUSED:Lcom/bumptech/glide/request/GenericRequest$Status;

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->status:Lcom/bumptech/glide/request/GenericRequest$Status;

    .line 327
    return-void
.end method

.method public recycle()V
    .locals 2

    .line 147
    .local p0, "this":Lcom/bumptech/glide/request/GenericRequest;, "Lcom/bumptech/glide/request/GenericRequest<TA;TT;TZ;TR;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadProvider:Lcom/bumptech/glide/provider/LoadProvider;

    .line 148
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->model:Ljava/lang/Object;

    .line 149
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->context:Landroid/content/Context;

    .line 150
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->target:Lcom/bumptech/glide/request/target/Target;

    .line 151
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->errorDrawable:Landroid/graphics/drawable/Drawable;

    .line 153
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestListener:Lcom/bumptech/glide/request/RequestListener;

    .line 154
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->requestCoordinator:Lcom/bumptech/glide/request/RequestCoordinator;

    .line 155
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->transformation:Lcom/bumptech/glide/load/Transformation;

    .line 156
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->animationFactory:Lcom/bumptech/glide/request/animation/GlideAnimationFactory;

    .line 157
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bumptech/glide/request/GenericRequest;->loadedFromMemoryCache:Z

    .line 158
    iput-object v0, p0, Lcom/bumptech/glide/request/GenericRequest;->loadStatus:Lcom/bumptech/glide/load/engine/Engine$LoadStatus;

    .line 159
    sget-object v0, Lcom/bumptech/glide/request/GenericRequest;->REQUEST_POOL:Ljava/util/Queue;

    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 160
    return-void
.end method
