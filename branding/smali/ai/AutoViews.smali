.class public final Lcom/isaigu/gymapp/ai/AutoViews;
.super Ljava/lang/Object;
.source "AutoViews.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/isaigu/gymapp/ai/AutoViews$Timeline;,
        Lcom/isaigu/gymapp/ai/AutoViews$Dots;,
        Lcom/isaigu/gymapp/ai/AutoViews$Vital;,
        Lcom/isaigu/gymapp/ai/AutoViews$PeakBar;,
        Lcom/isaigu/gymapp/ai/AutoViews$BodyHeat;,
        Lcom/isaigu/gymapp/ai/AutoViews$SetRing;
    }
.end annotation


# static fields
.field static final HEAT_AT:[F

.field static final HEAT_COL:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x6

    .line 33
    new-array v0, v1, [F

    fill-array-data v0, :array_10

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    .line 34
    new-array v0, v1, [I

    fill-array-data v0, :array_20

    sput-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    return-void

    .line 33
    :array_10
    .array-data 4
        0x0
        0x3e99999a    # 0.3f
        0x3f0ccccd    # 0.55f
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
        0x3fa00000    # 1.25f
    .end array-data

    .line 34
    :array_20
    .array-data 4
        -0xd09401
        -0xdd2c12
        -0xdd3aa2
        -0x533eb
        -0x10bbbc
        -0x46e3e4
    .end array-data
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static dp(Landroid/view/View;F)F
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p1

    return v0
.end method

.method public static heat(D)I
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 37
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    aget v0, v0, v2

    float-to-double v0, v0

    cmpg-double v0, p0, v0

    if-gtz v0, :cond_f

    .line 38
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    aget v0, v0, v2

    .line 46
    :goto_e
    return v0

    .line 40
    :cond_f
    const/4 v0, 0x1

    :goto_10
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    array-length v1, v1

    if-ge v0, v1, :cond_47

    .line 41
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    aget v1, v1, v0

    float-to-double v2, v1

    cmpg-double v1, p0, v2

    if-gtz v1, :cond_44

    .line 42
    sget-object v1, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    float-to-double v2, v1

    sub-double v2, p0, v2

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    aget v1, v1, v0

    sget-object v4, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_AT:[F

    add-int/lit8 v5, v0, -0x1

    aget v4, v4, v5

    sub-float/2addr v1, v4

    float-to-double v4, v1

    div-double/2addr v2, v4

    double-to-float v1, v2

    .line 43
    sget-object v2, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    sget-object v3, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    aget v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/isaigu/gymapp/widget/XemsUi;->mix(IIF)I

    move-result v0

    goto :goto_e

    .line 40
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 46
    :cond_47
    sget-object v0, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    sget-object v1, Lcom/isaigu/gymapp/ai/AutoViews;->HEAT_COL:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_e
.end method
