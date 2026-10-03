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
    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    .line 1360
    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    if-eqz v0, :cond_12

    .line 1365
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    iget-object v0, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->close()V

    .line 1366
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Dismissed;->v:Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/isaigu/gymapp/wearable/scale/ScaleScreen$Page;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 1368
    :cond_12
    return-void
.end method
