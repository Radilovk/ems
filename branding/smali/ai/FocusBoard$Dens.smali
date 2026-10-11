.class final Lcom/isaigu/gymapp/ai/FocusBoard$Dens;
.super Ljava/lang/Object;
.source "FocusBoard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/ai/FocusBoard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dens"
.end annotation


# static fields
.field static aDensity:F

.field static aDpi:I

.field static aScaled:F

.field static density:F

.field static dpi:I

.field static scaled:F


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static begin(Landroid/app/Activity;)V
    .registers 4

    .prologue
    .line 887
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 888
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 889
    iget v2, v0, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->density:F

    .line 890
    iget v2, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v2, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->scaled:F

    .line 891
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->dpi:I

    .line 892
    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->aDensity:F

    .line 893
    iget v0, v1, Landroid/util/DisplayMetrics;->scaledDensity:F

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->aScaled:F

    .line 894
    iget v0, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    sput v0, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->aDpi:I

    .line 895
    return-void
.end method

.method static end(Landroid/app/Activity;)V
    .registers 1

    .prologue
    .line 906
    invoke-static {p0}, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->hold(Landroid/app/Activity;)V

    .line 907
    return-void
.end method

.method static hold(Landroid/app/Activity;)V
    .registers 5

    .prologue
    .line 898
    sget v0, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->density:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_8

    .line 903
    :goto_7
    return-void

    .line 901
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->density:F

    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->scaled:F

    sget v3, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->dpi:I

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->set(Landroid/util/DisplayMetrics;FFI)V

    .line 902
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    sget v1, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->aDensity:F

    sget v2, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->aScaled:F

    sget v3, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->aDpi:I

    invoke-static {v0, v1, v2, v3}, Lcom/isaigu/gymapp/ai/FocusBoard$Dens;->set(Landroid/util/DisplayMetrics;FFI)V

    goto :goto_7
.end method

.method static set(Landroid/util/DisplayMetrics;FFI)V
    .registers 4

    .prologue
    .line 910
    iput p1, p0, Landroid/util/DisplayMetrics;->density:F

    .line 911
    iput p2, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 912
    iput p3, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 913
    return-void
.end method
