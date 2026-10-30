.class final Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ByRssi;
.super Ljava/lang/Object;
.source "ScaleLink.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/isaigu/gymapp/wearable/scale/ScaleLink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ByRssi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;)I
    .registers 5

    .prologue
    .line 283
    iget v0, p2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->rssi:I

    iget v1, p1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;->rssi:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 280
    check-cast p1, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;

    check-cast p2, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;

    invoke-virtual {p0, p1, p2}, Lcom/isaigu/gymapp/wearable/scale/ScaleLink$ByRssi;->compare(Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;Lcom/isaigu/gymapp/wearable/scale/ScaleLink$Seen;)I

    move-result v0

    return v0
.end method
