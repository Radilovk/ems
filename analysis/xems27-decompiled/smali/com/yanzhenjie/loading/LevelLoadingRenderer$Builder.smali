.class public Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
.super Ljava/lang/Object;
.source "LevelLoadingRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yanzhenjie/loading/LevelLoadingRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mCenterRadius:I

.field private mContext:Landroid/content/Context;

.field private mDuration:I

.field private mHeight:I

.field private mLevelColors:[I

.field private mStrokeWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "mContext"    # Landroid/content/Context;

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mContext:Landroid/content/Context;

    .line 263
    return-void
.end method

.method static synthetic access$400(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 249
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 249
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 249
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mStrokeWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 249
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mCenterRadius:I

    return v0
.end method

.method static synthetic access$800(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 249
    iget v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mDuration:I

    return v0
.end method

.method static synthetic access$900(Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)[I
    .locals 1
    .param p0, "x0"    # Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    .line 249
    iget-object v0, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mLevelColors:[I

    return-object v0
.end method

.method private oneThirdAlphaColor(I)I
    .locals 6
    .param p1, "colorValue"    # I

    .line 307
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 308
    .local v0, "startA":I
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 309
    .local v1, "startR":I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 310
    .local v2, "startG":I
    and-int/lit16 v3, p1, 0xff

    .line 312
    .local v3, "startB":I
    div-int/lit8 v4, v0, 0x3

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method

.method private twoThirdAlphaColor(I)I
    .locals 6
    .param p1, "colorValue"    # I

    .line 316
    shr-int/lit8 v0, p1, 0x18

    and-int/lit16 v0, v0, 0xff

    .line 317
    .local v0, "startA":I
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    .line 318
    .local v1, "startR":I
    shr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 319
    .local v2, "startG":I
    and-int/lit16 v3, p1, 0xff

    .line 321
    .local v3, "startB":I
    mul-int/lit8 v4, v0, 0x2

    div-int/lit8 v4, v4, 0x3

    shl-int/lit8 v4, v4, 0x18

    shl-int/lit8 v5, v1, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    return v4
.end method


# virtual methods
.method public build()Lcom/yanzhenjie/loading/LevelLoadingRenderer;
    .locals 2

    .line 301
    new-instance v0, Lcom/yanzhenjie/loading/LevelLoadingRenderer;

    iget-object v1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;-><init>(Landroid/content/Context;)V

    .line 302
    .local v0, "loadingRenderer":Lcom/yanzhenjie/loading/LevelLoadingRenderer;
    invoke-static {v0, p0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer;->access$1000(Lcom/yanzhenjie/loading/LevelLoadingRenderer;Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;)V

    .line 303
    return-object v0
.end method

.method public setCenterRadius(I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    .locals 0
    .param p1, "centerRadius"    # I

    .line 281
    iput p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mCenterRadius:I

    .line 282
    return-object p0
.end method

.method public setDuration(I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    .locals 0
    .param p1, "duration"    # I

    .line 286
    iput p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mDuration:I

    .line 287
    return-object p0
.end method

.method public setHeight(I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    .locals 0
    .param p1, "height"    # I

    .line 271
    iput p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mHeight:I

    .line 272
    return-object p0
.end method

.method public setLevelColor(I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    .locals 3
    .param p1, "color"    # I

    .line 297
    const/4 v0, 0x3

    new-array v0, v0, [I

    invoke-direct {p0, p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->oneThirdAlphaColor(I)I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->twoThirdAlphaColor(I)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    const/4 v1, 0x2

    aput p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->setLevelColors([I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setLevelColors([I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    .locals 0
    .param p1, "colors"    # [I

    .line 292
    iput-object p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mLevelColors:[I

    .line 293
    return-object p0
.end method

.method public setStrokeWidth(I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    .locals 0
    .param p1, "strokeWidth"    # I

    .line 276
    iput p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mStrokeWidth:I

    .line 277
    return-object p0
.end method

.method public setWidth(I)Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;
    .locals 0
    .param p1, "width"    # I

    .line 266
    iput p1, p0, Lcom/yanzhenjie/loading/LevelLoadingRenderer$Builder;->mWidth:I

    .line 267
    return-object p0
.end method
