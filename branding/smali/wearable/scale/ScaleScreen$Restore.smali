.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Restore;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Restore"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 2143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2144
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Restore;->a:Landroid/app/Activity;

    .line 2145
    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2150
    :try_start_0
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Restore;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2151
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDensity:F

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2152
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oScaled:F

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2153
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDpi:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2154
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Restore;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 2155
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aDensity:F

    iput v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 2156
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aScaled:F

    iput v1, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 2157
    sget v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->aDpi:I

    iput v1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 2158
    const/4 v0, 0x0

    sput v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->oDensity:F
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_33} :catch_34

    .line 2161
    :goto_33
    return-void

    .line 2159
    :catch_34
    move-exception v0

    goto :goto_33
.end method
