.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Close;
.super Ljava/lang/Object;
.source "ScaleLink.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Close"
.end annotation


# instance fields
.field final link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;


# direct methods
.method constructor <init>(Lcom/isaigu/gymapp/wearable/scale/ScaleLink;)V
    .registers 2

    .prologue
    .line 713
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p1, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Close;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    .line 715
    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 719
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Close;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->stopScan()V

    .line 720
    iget-object v0, p0, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Close;->link:Lcom/isaigu/gymapp/wearable/scale/ScaleLink;

    invoke-virtual {v0}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink;->closeGatt()V

    .line 721
    return-void
.end method
