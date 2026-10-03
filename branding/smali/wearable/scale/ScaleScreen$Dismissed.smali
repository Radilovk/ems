.class final Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;
.super Ljava/lang/Object;
.source "ScaleScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Dismissed"
.end annotation


# instance fields
.field final v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;)V
    .registers 2

    .prologue
    .line 2298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2299
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 2300
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 2304
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_12

    .line 2305
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->close()V

    .line 2306
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 2308
    :cond_12
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->main:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2309
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    if-eqz v0, :cond_26

    .line 2310
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->stage:Lcom/isaigu/gymapp/wearable/scale/ScaleStage;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleStage;->release()V

    .line 2312
    :cond_26
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->orientationBefore:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_39

    .line 2314
    :try_start_2e
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget v1, v1, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->orientationBefore:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_39} :catch_41

    .line 2318
    :cond_39
    :goto_39
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dens;->end(Landroid/app/Activity;)V

    .line 2319
    return-void

    .line 2315
    :catch_41
    move-exception v0

    goto :goto_39
.end method
