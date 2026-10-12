.class final Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;
.super Ljava/lang/Object;
.source "ScaleViews.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Fig"
.end annotation


# instance fields
.field art:Landroid/graphics/Bitmap;

.field ch:[B

.field final cx:[F

.field final cy:[F

.field h:I

.field idx:[I

.field lum:[B

.field over:Landroid/graphics/Bitmap;

.field px:[I

.field seg:[B

.field w:I


# direct methods
.method constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x6

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->cx:[F

    .line 178
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleViews$Body$Fig;->cy:[F

    return-void
.end method
